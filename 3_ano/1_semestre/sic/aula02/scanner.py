import bluetooth 
def scan_bluetooth_devices():
    try:
        print("Scanning for bluetooth devices...")
        nearby_devices = bluetooth.discover_devices(lookup_names=True)
        print(f"found {len(nearby_devices)}:")
        
        for addr,name in nearby_devices:
            services = bluetooth.find_service(address=addr)
            print(f"Device: {name},Address: {addr}")
            for service in services:
                print(f"|--| Service Classes: {service['service-classes']}")
                print(f"| | Service UUID: {service['service-id']}")
                print(f"|")
    except bluetooth.BluetoothError as e:
        print(f"Bluetooth error:{e}")
    except Exception as e:
        print(f"An error ocured: {e}")
    

if __name__ == "__main__":
    scan_bluetooth_devices()

