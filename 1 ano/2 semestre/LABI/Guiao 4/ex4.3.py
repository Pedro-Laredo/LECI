import time
import psutil

def main():

    start_time = time.time()

    end_time = start_time + 10

    while time.time() < end_time:
        current_time = time.time()
        net_io_counters = psutil.net_io_counters()

        # Utilização do processador
        cpu_percent = psutil.cpu_percent(interval=1)


        print(f"Tempo: {current_time - start_time} s")
        print(f"Octetos enviados: {net_io_counters.bytes_sent}")
        print(f"Octetos recebidos: {net_io_counters.bytes_recv}")
        print(f"Utilização do processador: {cpu_percent}%")
        print("-" * 30)

        

if __name__ == "__main__":
    main()
