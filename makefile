src = $(wildcard src/*.pug )
all: $(src:src/%.pug=actdocs/static/%.html)
actdocs/static/%.html: src/%.pug ; pug < $< > $@
