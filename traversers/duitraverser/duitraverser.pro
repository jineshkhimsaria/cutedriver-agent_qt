############################################################################
## 
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies). 
## All rights reserved. 
## Contact: Nokia Corporation (testabilitydriver@nokia.com) 
## 
## This file is part of Testability Driver Qt Agent
## 
## If you have questions regarding the use of this file, please contact 
## Nokia at testabilitydriver@nokia.com . 
## 
## This library is free software; you can redistribute it and/or 
## modify it under the terms of the GNU Lesser General Public 
## License version 2.1 as published by the Free Software Foundation 
## and appearing in the file LICENSE.LGPL included in the packaging 
## of this file. 
## 
############################################################################



TEMPLATE = lib
TARGET = duitraverse
CONFIG += plugin
#CONFIG += dui #not supported anymore

include(../../tasbase.pri)

target.path = $$TAS_TARGET_PLUGIN/traversers

DEPENDPATH += . 
INCLUDEPATH += . ../../tascore/corelib

# Input
HEADERS += tasduitraverse.h 
SOURCES += tasduitraverse.cpp
OTHER_FILES += tasduitraverse.json

DESTDIR = lib

QT += xml network

LIBS += -L../../tascore/lib/ -lqttestability 

INSTALLS += target
