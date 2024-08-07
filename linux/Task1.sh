#! /bin/bash
echo "Retrieving CPU and Memory Information:"
cpuInfo=$(lscpu)
memoryInfo=$(free -h)
disk=$(df -h)
systemInfo=$(uname -a)
                    echo "CPU Information:"
                    echo $cpuInfo

                    echo "Memory Information:"
                    echo $memoryInfo

		    echo "disk usage"
		    echo $disk

                    echo "System Information:"
                    echo $systemInfo
