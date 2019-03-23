#!/usr/bin/python3
with open("mods.csv","r")as mods:
    with open("urls.txt","w")as out:
        mods.readline()
        for i in mods:
            d=i.split(",")
            out.write("https://minecraft.curseforge.com/projects/")
            out.write(str(d[1]))
            out.write("/files/")
            out.write(str(d[2]))
            out.write("/download\n")

