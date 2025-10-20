/*
 * SPDX-FileCopyrightText: 2010-2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 */

#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
#include "esp_flash.h"
#include "esp_system.h"


static TaskHandle_t task1Handler = NULL;


void task1(void * params)
{
    while (true)
    {
        xTaskNotifyGive(task1Handler);
        printf("reading temperature from %s\n", pcTaskGetName(NULL));
        //vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

void task2(void * params)
{
    while (true)
    {
        printf("reading humidity from %s\n", pcTaskGetName(NULL));
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        }
}
void app_main(void)
{
    xTaskCreate(task2, "task2", 2048, NULL, 2, &task1Handler);
    xTaskCreate(task1, "task1", 2048, NULL, 6, NULL);  
    
}
