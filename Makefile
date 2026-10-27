CXX			?= g++

PKGS		:= ncurses
PKGS_FLAGS	:= $(shell pkg-config --cflags $(PKGS))
PKGS_LIBS	:= $(shell pkg-config --libs $(PKGS))

CXXFLAGS	:= -std=c++23 -Wall -Wextra -Wpedantic -MMD -MP $(PKGS_FLAGS)
LDFLAGS		:= $(PKGS_LIBS)

SRC			:= src
INCLUDE		:= include
BUILD		:= build


NAME		:= MemMapExplorer
OUTPUT		:= $(BUILD)/$(NAME)

SOURCES		:= $(shell find $(SRC) -type f -name "*.cpp")
OBJECTS		:= $(patsubst $(SRC)/%.cpp, $(BUILD)/%.o, $(SOURCES))

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): $(OBJECTS)
	$(CXX) $^ -o $@ $(LDFLAGS)

$(BUILD)/%.o: $(SRC)/%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -I$(INCLUDE) -c $< -o $@

clean:
	rm -rf $(BUILD)

-include $(OBJECTS:.o=.d)
