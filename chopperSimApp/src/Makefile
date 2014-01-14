TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = chopperSim
# chopperSim.dbd will be created and installed
DBD += chopperSim.dbd

# chopperSim.dbd will be made up from these files:
chopperSim_DBD += base.dbd

# Include dbd files from all support applications:
#chopperSim_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#chopperSim_LIBS += xxx

# chopperSim_registerRecordDeviceDriver.cpp derives from chopperSim.dbd
chopperSim_SRCS += chopperSim_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
chopperSim_SRCS_DEFAULT += chopperSimMain.cpp
chopperSim_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#chopperSim_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
chopperSim_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

