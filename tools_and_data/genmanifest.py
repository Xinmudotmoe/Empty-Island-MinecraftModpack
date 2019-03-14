#!/usr/bin/python3
import json
data="""
{
    "manifestType": "minecraftModpack",
    "manifestVersion": 1,
    "name": "Xinmu`s Empty island",
    "version": "a0.8",
    "author": "Xinmu",
    "overrides": "overrides",
    "minecraft": {"modLoaders":[{"id":"forge-14.23.5.2811","primary":true}],"version":"1.12.2"}
}
"""
vjsondata=json.loads(data)

hand=[]
data=[]
ldata=[]
with open("mods.csv","r") as mods:
    hand=mods.readline().split("\n")[0].split(",")
    for i in mods:
        data.append(i.split("\n")[0].split(","))

for i in data:
    i[1]=int(i[1])
    i[2]=int(i[2])
    i[3]=bool(i[3])
for i in data:
    print(i)
    datrdatda={hand[j]:(len(i[j]) if i==1 or i==2 else i[j]) for j in range(len(hand))}
    dadada={i:datrdatda[i] for i in datrdatda.keys() if i in ["projectID","fileID"]}
    ldata.append(dadada)
print(ldata)

vjsondata["files"]=ldata
#print(json.dumps(vjsondata))
with open("manifest.json","w") as file:
    file.write(json.dumps(vjsondata))
