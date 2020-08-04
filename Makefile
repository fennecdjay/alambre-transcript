NEW ?=
LY ?= lilypond
LY_ARGS ?= -I src -I lib
WAIT ?= inotifywait
WAIT_ARGS ?= -q -r src -r lib book.ly

book.pdf: book.ly
	$(LY) $(LY_ARGS) $(<:.o=.ly)

.pdf.ly:
	$(LY) $(LY_ARGS) $(<:.o:=.ly)

generate:
	@if [ -z ${NEW}  ]; then "echo make generate needs name as argument." && exit 1; fi
	@for file in $$(find . -type f -name "template*.ly"); \
do name=$$(sed "s/template/${NEW}/" <<< $$file);        \
sed "s/template/${NEW}/" "$$file" > "$$name";           \
done

watch:
	@mupdf book.pdf&                                                         \
	MUPDF_PID=$$!                                                            \
	trap 'kill $$MUPDF_PID' EXIT;                                            \
  while true;                                                              \
  do                                                                       \
    ps -q $${MUPDF_PID} > /dev/null || { mupdf book.pdf& MUPDF_PID=$$!; }; \
    ${WAIT} ${WAIT_ARGS} > /dev/null;                                      \
    make;                                                                  \
    ps -q $${MUPDF_PID} > /dev/null && kill -HUP $${MUPDF_PID};            \
  done
