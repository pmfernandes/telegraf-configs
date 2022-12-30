#!/bin/bash
processorFamily=$(dmidecode -s processor-family)
processorManufacturer=$(dmidecode -s processor-manufacturer)
processorVersion=$(dmidecode -s processor-version)
processorFrequency=$(dmidecode -s processor-frequency)
biosVendor=$(dmidecode -s bios-vendor)
biosVersion=$(dmidecode -s bios-version)
biosReleaseDate=$(dmidecode -s bios-release-date)
systemManufacturer=$(dmidecode -s system-manufacturer)
systemProductName=$(dmidecode -s system-product-name)
systemVersion=$(dmidecode -s system-version)
chassisType=$(dmidecode -s chassis-type)
echo "$processorFamily;$processorManufacturer;$processorVersion;$processorFrequency;$biosVendor;$biosVersion;$biosReleaseDate;$systemManufacturer;$systemProductName;$systemVersion;$chassisType"
