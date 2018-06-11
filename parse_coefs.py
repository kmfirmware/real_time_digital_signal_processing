import re

inputfile=open('A_inv.dat','r')
floats=inputfile.readline().strip().split(' ')
i=0
for f in floats:
   if (i == 0):
      print "{",
   print "(Int16)("+f+"*32767 + 0.5)",
   if (i == 310):
      print("},\n")
      i=0
   elif (i > 0):
      print ",",
   i+=1
inputfile.close()
