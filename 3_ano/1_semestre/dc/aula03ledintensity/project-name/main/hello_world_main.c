#include "esp_check.h"
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "driver/i2c_master.h"

/* ---- I2C configuration ---- */
#define I2C_MASTER_SCL_IO         7
#define I2C_MASTER_SDA_IO         6
#define I2C_MASTER_NUM            I2C_NUM_0
#define I2C_MASTER_FREQ_HZ        100000
#define I2C_MASTER_TX_BUF_DISABLE 0
#define I2C_MASTER_RX_BUF_DISABLE 0
#define I2C_MASTER_TIMEOUT_MS     1000

/* ---- DHT20 specifics ---- */
#define DHT20_ADDR        0x38
#define DHT20_CMD_TRIGGER 0xAC
#define DHT20_ARG1        0x33
#define DHT20_ARG2        0x00

static const char *TAG = "DHT20";


static esp_err_t i2c_master_init(i2c_master_bus_handle_t *bus_handle,
                                 i2c_master_dev_handle_t *dev_handle)
{
    i2c_master_bus_config_t bus_cfg = {
        .i2c_port = I2C_MASTER_NUM,
        .scl_io_num = I2C_MASTER_SCL_IO,
        .sda_io_num = I2C_MASTER_SDA_IO,
        .clk_source = I2C_CLK_SRC_DEFAULT,
        .glitch_ignore_cnt = 7,
        .flags = { .enable_internal_pullup = true }
    };
    ESP_RETURN_ON_ERROR(i2c_new_master_bus(&bus_cfg, bus_handle), TAG, "bus");

    i2c_device_config_t dev_cfg = {
        .dev_addr_length = I2C_ADDR_BIT_LEN_7,
        .device_address = DHT20_ADDR,
        .scl_speed_hz = I2C_MASTER_FREQ_HZ,
    };
    ESP_RETURN_ON_ERROR(i2c_master_bus_add_device(*bus_handle, &dev_cfg, dev_handle), TAG, "dev");
    return ESP_OK;
}

//mede e le 7 bytes
static esp_err_t dht20_read(i2c_master_dev_handle_t dev, float *t_c, float *rh)
{
    uint8_t tx[3] = { DHT20_CMD_TRIGGER, DHT20_ARG1, DHT20_ARG2 };
    ESP_RETURN_ON_ERROR(i2c_master_transmit(dev, tx, 3, pdMS_TO_TICKS(I2C_MASTER_TIMEOUT_MS)), TAG, "tx");

    // delay porque caso nao adicione spama erros
    vTaskDelay(pdMS_TO_TICKS(90));

    uint8_t rx[7] = {0};
    ESP_RETURN_ON_ERROR(i2c_master_receive(dev, rx, 7, pdMS_TO_TICKS(I2C_MASTER_TIMEOUT_MS)), TAG, "rx");

    //extrair os 20 bits
    uint32_t raw_rh = ((uint32_t)rx[1] << 12) | ((uint32_t)rx[2] << 4) | (rx[3] >> 4);
    uint32_t raw_t  = (((uint32_t)rx[3] & 0x0F) << 16) | ((uint32_t)rx[4] << 8) | rx[5];

    *rh  = (raw_rh * 100.0f) / 1048576.0f;       // %RH
    *t_c = (raw_t  * 200.0f) / 1048576.0f - 50.0f; // °C
    return ESP_OK;
}

void app_main(void)
{
    i2c_master_bus_handle_t bus_handle = NULL;
    i2c_master_dev_handle_t dev_handle = NULL;

    ESP_ERROR_CHECK(i2c_master_init(&bus_handle, &dev_handle));
    ESP_LOGI(TAG, "I2C initialized successfully (SDA=%d, SCL=%d, addr=0x%02X)",
             I2C_MASTER_SDA_IO, I2C_MASTER_SCL_IO, DHT20_ADDR);

    while (1) {
        float t_c = 0.0f, rh = 0.0f;
        esp_err_t err = dht20_read(dev_handle, &t_c, &rh);
        if (err == ESP_OK) {
            ESP_LOGI(TAG, "Temperatura: %.2f C | Humidade: %.2f %%", t_c, rh);
        } else {
            ESP_LOGE(TAG, "Falha na leitura: %s", esp_err_to_name(err));
        }
        vTaskDelay(pdMS_TO_TICKS(2000));
    }

    // Normally we never reach this, but here for completeness:
    ESP_ERROR_CHECK(i2c_master_bus_rm_device(dev_handle));
    ESP_ERROR_CHECK(i2c_del_master_bus(bus_handle));
    ESP_LOGI(TAG, "I2C de-initialized successfully");
}
