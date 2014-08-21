#!../../bin/windows-x64/chopperSim

## You may have to change chopperSim to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/chopperSim.dbd"
chopperSim_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/chopper.db","P=$(MYPVPREFIX)CHOPPER:")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=sjb99183Host"
