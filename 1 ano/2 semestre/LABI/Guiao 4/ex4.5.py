import time
import psutil
import json

def main():
    start_time = time.time()
    end_time = start_time + 10

    stats = []

    while time.time() < end_time:
        current_time = time.time()
        net_io_counters = psutil.net_io_counters()

        # Utilização do processador
        cpu_percent = psutil.cpu_percent(interval=1)

        # Printando as estatísticas
        print(f"Tempo: {current_time - start_time} s")
        print(f"Octetos enviados: {net_io_counters.bytes_sent}")
        print(f"Octetos recebidos: {net_io_counters.bytes_recv}")
        print(f"Utilização do processador: {cpu_percent}%")
        print("-" * 30)

        # Adicionando estatísticas à lista
        stats.append({
            "time": current_time,"cpu": cpu_percent,
            "network": {
                "bytes_sent": net_io_counters.bytes_sent,
                "bytes_recv": net_io_counters.bytes_recv
            }
        })

    # Escrevendo estatísticas em formato JSON para um arquivo
    with open("stats.json", "w") as f:
        json.dump({"stats": stats}, f,indent=1)

if __name__ == "__main__":
    main()
