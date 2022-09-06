RACK_DIR ?= ../..

# Exported code
FLAGS += -Irnbo-export/rnbo/code
FLAGS += -Irnbo-export/rnbo
FLAGS += -Irnbo-export/rnbo/adapters
FLAGS += -Irnbo-export/rnbo/common
FLAGS += -Irnbo-export/rnbo/src

SOURCES += rnbo-export/rnbo_source.cpp
SOURCES += rnbo-export/rnbo/RNBO.cpp

# VCV module
FLAGS += -Isrc 
SOURCES += $(wildcard src/*.cpp)

# Include the license and module SVGs in the distribution
DISTRIBUTABLES += $(wildcard ../LICENSE*) res

include $(RACK_DIR)/plugin.mk