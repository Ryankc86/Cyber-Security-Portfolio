#!/bin/bash

#show amount of free memory
free -h > ~/backups/freemem/free_mem.txt

#display disk usage
du -h > ~/backups/diskuse/disk_usage.txt

#list of open files
lsof > ~/backups/openlist/open_list.txt

#print file system disk space
df -h > ~/backups/freedisk/free_disk.txt
