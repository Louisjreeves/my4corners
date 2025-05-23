# my4corners
test disks speed 4 tests 

#for testing disks#

# WacAzLocalhelp
Tests a standard disk from Diskspd pagefile to a unc path. This is what has been tested. 

Disable all cache on both sides. this will influence the numbers 

The UNC path Contains the data file. this means the DiskSpd is testing the network, if on a different machine.


## Be gentle. This script is old. There is some old code, so it needs to be cleaned up some ## 

## This Tests SMB from the Pagefile of the server to the target folder. This runs to the UNC path of the target  ##


``` Powershell
echo my4corners; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $path=Join-Path $PWD 'my4corners.ps1'; (New-Object Net.WebClient).DownloadFile('https://github.com/Louisjreeves/my4corners/raw/refs/heads/main/my4corners.ps1', $path); & $path
```


``` Powershell
echo my4corners; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $path=Join-Path $PWD 'my4corners.ps1'; (New-Object Net.WebClient).DownloadFile('https://github.com/Louisjreeves/my4corners/raw/refs/heads/main/my4corners.ps1', $path); & $path
```




![image](https://github.com/user-attachments/assets/c972f617-0994-47bf-a8e1-f8de736c2d13)
![image](https://github.com/user-attachments/assets/0c33bc1f-d10c-4a12-b038-f21a68313b67)





![image](https://github.com/user-attachments/assets/2a3f63e7-08ec-49bc-9158-ba1fe8f50cd3)

![image](https://github.com/user-attachments/assets/76051e3a-66ed-449f-a7e3-1721ca32aa06)

![image](https://github.com/user-attachments/assets/c1a0309e-db99-43ce-912f-f4c343b60e90)


Tests are 1 test for each block size and at each IO rate and each throughput 

 seq Read Seq write
 random Read, Random Write
Blocks  4K  8K  64K  512K

4x4 or 16 tests- 

Immediate results 

TEST RESULTS (also logged in .\output.txt)
Test 1,\\thor\temp,Read,Random,Blocks 4K,Run 1,20447.47,79.87,0.097,11.70%
Test 1, \\thor\temp, Read, Random, Blocks 4K, Run 1, 20447.47 IOPS, 79.87 MB/sec, 0.097 ms, 11.70% CPU
Test 2,\\thor\temp,Read,Sequential,Blocks 4K,Run 1,38649.81,150.98,0.051,23.50%
Test 2, \\thor\temp, Read, Sequential, Blocks 4K, Run 1, 38649.81 IOPS, 150.98 MB/sec, 0.051 ms, 23.50% CPU
Test 3,\\thor\temp,Write,Random,Blocks 4K,Run 1,33635.12,131.39,0.059,18.16%
Test 3, \\thor\temp, Write, Random, Blocks 4K, Run 1, 33635.12 IOPS, 131.39 MB/sec, 0.059 ms, 18.16% CPU
Test 4,\\thor\temp,Write,Sequential,Blocks 4K,Run 1,33535.63,131.00,0.059,18.98%
Test 4, \\thor\temp, Write, Sequential, Blocks 4K, Run 1, 33535.63 IOPS, 131.00 MB/sec, 0.059 ms, 18.98% CPU
Test 5,\\thor\temp,Read,Random,Blocks 8K,Run 1,19529.26,152.57,0.102,14.71%
Test 5, \\thor\temp, Read, Random, Blocks 8K, Run 1, 19529.26 IOPS, 152.57 MB/sec, 0.102 ms, 14.71% CPU
Test 6,\\thor\temp,Read,Sequential,Blocks 8K,Run 1,38953.99,304.33,0.051,20.51%
Test 6, \\thor\temp, Read, Sequential, Blocks 8K, Run 1, 38953.99 IOPS, 304.33 MB/sec, 0.051 ms, 20.51% CPU
Test 7,\\thor\temp,Write,Random,Blocks 8K,Run 1,33221.30,259.54,0.060,19.44%
Test 7, \\thor\temp, Write, Random, Blocks 8K, Run 1, 33221.30 IOPS, 259.54 MB/sec, 0.060 ms, 19.44% CPU
Test 8,\\thor\temp,Write,Sequential,Blocks 8K,Run 1,31462.21,245.80,0.063,17.92%
Test 8, \\thor\temp, Write, Sequential, Blocks 8K, Run 1, 31462.21 IOPS, 245.80 MB/sec, 0.063 ms, 17.92% CPU
Test 9,\\thor\temp,Read,Random,Blocks 64K,Run 1,8546.86,534.18,0.233,8.52%
Test 9, \\thor\temp, Read, Random, Blocks 64K, Run 1, 8546.86 IOPS, 534.18 MB/sec, 0.233 ms, 8.52% CPU
Test 10,\\thor\temp,Read,Sequential,Blocks 64K,Run 1,23523.86,1470.24,0.085,19.92%
Test 10, \\thor\temp, Read, Sequential, Blocks 64K, Run 1, 23523.86 IOPS, 1470.24 MB/sec, 0.085 ms, 19.92% CPU
Test 11,\\thor\temp,Write,Random,Blocks 64K,Run 1,14705.68,919.10,0.135,12.91%
Test 11, \\thor\temp, Write, Random, Blocks 64K, Run 1, 14705.68 IOPS, 919.10 MB/sec, 0.135 ms, 12.91% CPU
Test 12,\\thor\temp,Write,Sequential,Blocks 64K,Run 1,22314.92,1394.68,0.089,17.14%
Test 12, \\thor\temp, Write, Sequential, Blocks 64K, Run 1, 22314.92 IOPS, 1394.68 MB/sec, 0.089 ms, 17.14% CPU
Test 13,\\thor\temp,Read,Random,Blocks 512K,Run 1,5751.61,2875.81,0.347,10.49%
Test 13, \\thor\temp, Read, Random, Blocks 512K, Run 1, 5751.61 IOPS, 2875.81 MB/sec, 0.347 ms, 10.49% CPU
Test 14,\\thor\temp,Read,Sequential,Blocks 512K,Run 1,5605.35,2802.68,0.356,8.24%
Test 14, \\thor\temp, Read, Sequential, Blocks 512K, Run 1, 5605.35 IOPS, 2802.68 MB/sec, 0.356 ms, 8.24% CPU
Test 15,\\thor\temp,Write,Random,Blocks 512K,Run 1,1763.66,881.83,1.133,6.34%
Test 15, \\thor\temp, Write, Random, Blocks 512K, Run 1, 1763.66 IOPS, 881.83 MB/sec, 1.133 ms, 6.34% CPU
Test 16,\\thor\temp,Write,Sequential,Blocks 512K,Run 1,3557.36,1778.68,0.562,15.68%
Test 16, \\thor\temp, Write, Sequential, Blocks 512K, Run 1, 3557.36 IOPS, 1778.68 MB/sec, 0.562 ms, 15.68% CPU
Testing is complete. You may have to restart the application and choose the Open Graph Button.
Press Enter to continue...: 



Choose option 2 but its just the same as option 1- data on screen 

Choose option 3 for the graph. 

This graph is accurate to the extent all CACHE is off on windows, pools, hardware. The hisest it will get is approaching line speed. 

The CSV will be in the download folder by the time you run this option 3. this is exported for you and will be used to populte the graph 












![image](https://github.com/user-attachments/assets/4c126807-0eaa-425b-87a4-b59d9901a9bf)



