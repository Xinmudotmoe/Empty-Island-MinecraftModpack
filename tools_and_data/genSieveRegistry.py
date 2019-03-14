import json
nameList={}
def getNameToIn(name):
    return nameList[name][0]+ ((":"+nameList[name][1]) if nameList[name][1]!="0" else "")
def getNameToDrop(name):
    return {"name":nameList[name][0],"meta":int(nameList[name][1])}
output={}
with open("iteambind.csv","r") as inbind:
    inbind.readline()
    for i in inbind:
        dat=i.split("\n")[0].split(",")
        nameList[dat[0]]=dat[1:]

with open("bind_cast.csv","r")as cast:
    cast.readline()
    for i in cast:
        dat=i.split("\n")[0].split(",")
        if getNameToIn(dat[0]) not in output.keys():
            output[getNameToIn(dat[0])]=[]
        output[getNameToIn(dat[0])].append({"drop":getNameToDrop(dat[1]),"chance":float(dat[2]),"meshLevel":int(dat[3])})

with open("SieveRegistry.json.1","w")as sieve:
    sieve.write(json.dumps(output))

