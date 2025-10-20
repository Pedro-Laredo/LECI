import time
import psutil
import json

def main():
    data = []

    start_time = time.time()

    end_time = start_time + 10

    while time.time() < end_time:
        current_time = time.time()
        net_io_counters = psutil.net_io_counters()

        # Utilização do processador
        cpu_percent = psutil.cpu_percent(interval=1)
        data.append({"time": current_time, "cpu" : cpu_percent,"network" : net_io_counters })
    with open("dados.json", "w") as ficheiro:
        json.dump(data,ficheiro,indent=4)
    
main()
