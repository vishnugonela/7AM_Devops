#!/bin/python

n="nitin"
c=0
s=[]
for i in range(0,len(n)):
   
    for j in range(0,len(n)):
        if  n[i]==n[j]:
            c+=1;
            

    if c <= 2:
        print(n[i]+"="+str(c))
        c=0
    else:
        pass