import sys
import os
import time
import psutil 
proc = psutil.Process(int(sys.argv[1]))
print "process ID: ", proc.pid
print "process Name: ", proc.name
print "process Status: ", proc.status
print "process Parent ID: ", proc.ppid
print "process Parent Name: ", psutil.Process(proc.ppid).name
print "Process Creation Time:", time.ctime(proc.create_time)
print "Files opened by the process info:", proc.get_open_files()
print "Memory Info (In Bytes):", proc.get_memory_info()
