NEW       ?=
SINGLE    ?=
LY        ?= lilypond
LY_ARGS   ?= -I src -I lib
WAIT      ?= inotifywait
WAIT_ARGS ?= -q -r src -r lib book.ly

lib    = $(wildcard lib/*.ly)
ifndef SINGLE
src    = $(filter-out %/template.ly,$(wildcard src/*.ly))
melody = $(subst src/,src/melody/,${src})
lyrics = $(subst src/,src/lyrics/,${src})
chords = $(subst src/,src/chords/,${src})
remain = $(subst src/,src/remain/,${src})
single = $(filter-out %/template-single.ly, $(wildcard single/*.ly))
else
src    = src/${SINGLE}.ly
melody = src/melody/${SINGLE}.ly
lyrics = src/lyrics/${SINGLE}.ly
chords = src/chords/${SINGLE}.ly
remain = src/remain/${SINGLE}.ly
single = single/${SINGLE}-single.ly
endif

deps = ${lib} ${src} ${melody} ${lyrics} ${chords} ${remain}

all: ${single}
	for file in ${src}; \
	do\
    make -s single SINGLE=$$(sed 's#src/\(.*\).ly#\1#' <<< $${file});\
	done
	make -s book.pdf

book.pdf: ${deps} book.ly
	${LY} ${LY_ARGS} book.ly

.PHONY: single
single:
	make -s ${SINGLE}-single.pdf SINGLE=${SINGLE}

${SINGLE}-single.pdf: ${lib} ${deps} ${single}
	${LY} ${LY_ARGS} single/${SINGLE}-single.ly

new:
	@if [ -z ${NEW}  ]; then echo "usage: make generate NEW=<filename>" && exit 1; fi
	@for file in $$(find . -type f -name "template*.ly"); \
   do                                                   \
     name=$$(sed "s/template/${NEW}/" <<< $$file);      \
     sed "s/template/${NEW}/" "$$file" > "$$name";      \
   done

define launch_pdf
  mupdf book.pdf& MUPDF_PID=$$!
endef

define check_pdf
  ps -q $${MUPDF_PID} > /dev/null
endef

watch:
	trap 'kill $$MUPDF_PID' EXIT;                   \
  while true;                                     \
  $(call launch_pdf);                             \
  do                                              \
    $(call check_pdf) || $(call launch_pdf);      \
    ${WAIT} ${WAIT_ARGS} > /dev/null;             \
    make - S;                                     \
    $(call check_pdf) && kill -HUP $${MUPDF_PID}; \
  done
