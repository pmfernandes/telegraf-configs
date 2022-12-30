# Telegraf 2 HomeAssistant
This will help to monitor your personal computer with HomeAssistant using `Telegraf` and a MQTT broker.

## First step
Follow this guide:

 - https://www.smarthomelab.ca/monitor-proxmox-computer-temperatures-using-home-assistant-telegraf-and-mqtt/
 - https://www.smarthomelab.ca/integrate-telegraf-with-home-assistant-using-node-red-and-mqtt/

## Get CPU Information

1. Add telegraf user to sudoers
 ```bash
echo  "telegraf ALL=(ALL) NOPASSWD:ALL"  | sudo tee /etc/sudoers.d/telegraf
```
2. Upload the file `cpu_information.sh` to `/etc/telegraf`
3. Add the following entry in `telegraf.conf`
```
[[inputs.exec]]
  ## Commands array
  commands = ["sudo bash /etc/telegraf/cpu_information.sh"]
  name_override = "CPU_Informations"
  timeout = "5s"
  data_format = "csv"
  csv_header_row_count = 0
  csv_column_names = ["processorFamily","processorManufacturer","processorVersion","processorFrequency","biosVendor","biosVersion","biosReleaseDate","systemManufacturer","systemProductName","systemVersion","chassisType"]
  csv_delimiter = ";"
  csv_trim_space = true
```

## Node Red

Import the file [nodered_flow](./nodered_flow.json) and adjust topic.
