RACK_DIR ?= ../..

# Automatically set the plugin slug to the first module's slug
MODULE_SLUG := $(shell jq -r '.modules[0].slug' plugin.json)
MODULE_NAME := $(shell jq -r '.modules[0].name' plugin.json | sed 's/ /\\ /g')

# Exported code
FLAGS += -Irnbo-export/rnbo/code
FLAGS += -Irnbo-export/rnbo
FLAGS += -Irnbo-export/rnbo/adapters
FLAGS += -Irnbo-export/rnbo/common
FLAGS += -Irnbo-export/rnbo/src

SOURCES += rnbo-export/rnbo_source.cpp
SOURCES += rnbo-export/rnbo/RNBO.cpp

CXXFLAGS += -DMODULE_SLUG=\"$(MODULE_SLUG)\"
CXXFLAGS += -DMODULE_NAME=\"$(MODULE_NAME)\"

# VCV module
FLAGS += -Isrc 
SOURCES += $(wildcard src/*.cpp)

# Include the license and module SVGs in the distribution
DISTRIBUTABLES += $(wildcard ../LICENSE*) res

include $(RACK_DIR)/plugin.mk