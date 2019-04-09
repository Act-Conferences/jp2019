.PHONY: clean test
src_pages     = $(wildcard src/*.pug )
src_templates = $(wildcard src/templates/* )

pages     = $(src_pages:src/%.pug=actdocs/static/%.html)
demo_root = demo
demo      = $(pages:actdocs/static/%.html=$(demo_root)/%.html)
templates = $(src_templates:src/templates/%=actdocs/templates/%)

all : $(pages) $(templates) $(demo)

actdocs/static/%.html: src/%.pug $(templates) ; pug < $< > $@
actdocs/templates/%  : src/templates/%        ; pug < $< > $@
$(demo_root)         :                        ; mkdir -p $@
$(demo)              : $(demo_root) $(pages)
	TTREERC=ttree.cfg ttree
	rsync -r wwwdocs/* demo/
