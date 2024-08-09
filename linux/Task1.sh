#! /bin/bash
echo "Retrieving CPU and Memory Information:"
cpuInfo=$(lscpu)
memoryInfo=$(free -h)
systemInfo=$(uname -a)
                    echo "CPU Information:"
                    echo $cpuInfo

                    echo "Memory Information:"
                    echo $memoryInfo
		    
                    echo "System Information:"
                    echo $systemInfo
