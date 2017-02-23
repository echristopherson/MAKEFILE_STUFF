CXX = clang++
CXXFLAGS = -Wall -Wextra -Werror -std=c++14
CC = $(CXX) # TODO: I'm not sure if this is the best way to force $(CC) to link C++ libraries
CFLAGS = $(CXXFLAGS) # ditto

objects = $(subst .cpp,.o,$(wildcard *.cpp))
# Define library_objects as the list of .o files that don't contain main
programs = $(subst .o,,$(filter-out $(library_objects),$(objects)))

.SUFFIXES: .o .cpp
.PHONY: clean
.DEFAULT_GOAL = all

# Just cancel this rule; we don't want to allow compilation of executables
# from .cpp files without them being explicitly defined in makefiles.
# That basically means ignoring implicit rules. We should be able to get the
# same result from running make -r.
% : %.cpp

clean:
	-rm $(objects) $(programs)

.DELETE_ON_ERROR:
.SECONDARY:

.SECONDEXPANSION:
all: $$(programs)
