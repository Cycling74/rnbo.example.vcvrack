RACK_DIR ?= ../..

# Automatically set the plugin slug to the first module's slug
MODULE_SLUG := $(shell jq -r '.modules[0].slug' plugin.json)

# Exported code
FLAGS += -Irnbo-export/rnbo/code
FLAGS += -Irnbo-export/rnbo
FLAGS += -Irnbo-export/rnbo/adapters
FLAGS += -Irnbo-export/rnbo/common
FLAGS += -Irnbo-export/rnbo/src

SOURCES += rnbo-export/rnbo_source.cpp
SOURCES += rnbo-export/rnbo/RNBO.cpp

CXXFLAGS += -DMODULE_SLUG=\"$(MODULE_SLUG)\"

# VCV module
FLAGS += -Isrc 
SOURCES += $(wildcard src/*.cpp)

# Include the license and module SVGs in the distribution
DISTRIBUTABLES += $(wildcard ../LICENSE*) res

include $(RACK_DIR)/plugin.mk