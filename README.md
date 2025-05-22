# my4corners
test disks speed 4 tests 

#for testing disks#

# WacAzLocalhelp
Tests a standard disk from Diskspd pagefile to a unc path. This is what has been tested. 

Disable all cache on both sides. this is influence the numbers 

The UNC path likely has the data file. this means the DiskSpd is testing the network.


## Be gentle. This script is old. it has been re-tooled to work with S2d. But its not optimal ## 

## This Tests SMB from the Pagefile of the server this runs on to the UNC path of the target  ##


``` Powershell
echo WacAzLocalhelp; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $path=Join-Path $PWD 'my4corners.ps1'; (New-Object Net.WebClient).DownloadFile('https://github.com/Louisjreeves/my4corners/raw/refs/heads/main/my4corners.ps1', $path); & $path
```


``` Powershell
echo my4corners; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $path=Join-Path $PWD 'my4corners.ps1'; (New-Object Net.WebClient).DownloadFile('https://github.com/Louisjreeves/my4corners/raw/refs/heads/main/my4corners.ps1', $path); & $path
```
