'''
match a valid ip address
valid IP address: address seperated in 4 parts, each part is a number between 0 and 255
'''
import re
# print()
pattern="^([0-9]?[0-9]{1}|[01]?[0-9]{2}|2[0-5]{2})\.([0-9]?[0-9]{1}|[01]?[0-9]{2}|2[0-5]{2})\.([0-9]?[0-9]{1}|[01]?[0-9]{2}|2[0-5]{2})\.([0-9]?[0-9]{1}|[01]?[0-9]{2}|2[0-5]{2})\.$"

'''str=input("hi. please input an ip address:\n")
m=re.match(pattern,str)
if m:
  print("this is a valid ip address")
else:
  print("nope.")

'''
# match the functions declarations that starts with lowercase 
'''
p=r"^def [a-z_]\w*:$"'''
pat=r"(.)(l.u)" # 2 groups
pat_1=r"(?:.)(l.u)" #1 group
pat_2=r"(?:.)(?:l.u)"
s="lau aluu ccallllu"
print("this is 2 groups in pattern:",re.findall(pat,s))
print("this is 1 group in pattern:", re.findall(pat_1,s))
print("this is w\o groups in pattern:",re.findall(pat_2,s))