TARGET = ctp-graph-2-pddl
HEADERS =
SOURCES = ctp-graph-2-pddl.cpp
OBJECTS = $(SOURCES:%.cpp=.obj/%.o)
PROFILE_OBJECTS = $(SOURCES:%.cpp=.obj/%.profile.o)

CC = g++
DEPEND = g++ -MM
CCOPT = -Wall -W -ansi -pedantic -m32
LINKOPT = -m32

## -g3 doesn't appear to hurt performance, so we can leave it on always
CCOPT += -g3

## It may sometimes be advisable to disable -O3 for debugging or profiling,
## but generally it should stay on.
CCOPT += -O3

## For getting the very last ounce of performance, one might consider
## adding -DNDEBUG to disable assertions, but usually this is a bad
## idea, so this one should usually remain commented out.
# CCOPT += -NDEBUG

## Depending on which machine we compile on and which machine we run
## on, we might need to link statically. The drawback of this is that
## it affects valgrind, so comment this one out when using valgrind.
#LINKOPT += -static -static-libgcc

PROFOPT = -pg
PROFLINKOPT = -pg
PROFARGS = input/test00_50_T.graph 1

SHELL = /bin/bash

$(TARGET): $(OBJECTS)
	$(CC) $(LINKOPT) $(OBJECTS) -o $(TARGET)

$(OBJECTS): .obj/%.o: %.cpp
	mkdir -p $$(dirname $@)
	$(CC) $(CCOPT) -c $< -o $@

profile-$(TARGET): $(PROFILE_OBJECTS)
	$(CC) $(LINKOPT) $(PROFLINKOPT) $(PROFILE_OBJECTS) \
	  -o profile-$(TARGET)

PROFILE: profile-$(TARGET)
	./profile-$(TARGET) $(PROFARGS)
	gprof profile-$(TARGET) > PROFILE.tmp
	cat PROFILE.tmp | (cleanup-profile || cat) 2> /dev/null > PROFILE
	rm -f PROFILE.tmp

$(PROFILE_OBJECTS): .obj/%.profile.o: %.cpp
	mkdir -p $$(dirname $@)
	$(CC) $(CCOPT) $(PROFOPT) -c $< -o $@

clean:
	rm -rf .obj/
	rm -f Makefile.depend PROFILE gmon.out core profile-$(TARGET)

distclean: clean
	rm -f $(TARGET)

Makefile.depend: $(SOURCES) $(HEADERS)
	rm -f Makefile.temp
	for source in $(SOURCES) ; do \
	    $(DEPEND) $$source > Makefile.temp0; \
	    objfile=$${source%%.cpp}.o; \
	    sed -i -e "s@^[^:]*:@$$objfile:@" Makefile.temp0; \
	    cat Makefile.temp0 >> Makefile.temp; \
	done
	rm -f Makefile.temp0
	sed -e "s@\(.*\)\.o:\(.*\)@.obj/\1.o:\2@" Makefile.temp > Makefile.depend
	sed -e "s@\(.*\)\.o:\(.*\)@.obj/\1.profile.o:\2@" Makefile.temp >> Makefile.depend
	rm -f Makefile.temp

ifneq ($(MAKECMDGOALS),clean)
-include Makefile.depend
endif

.PHONY: clean distclean
