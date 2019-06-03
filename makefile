.PHONY: clean test
src_pages     = $(wildcard src/*.pug )
markdown      = $(wildcard src/*.md  )
src_templates = $(wildcard src/templates/* )

pages     = $(src_pages:src/%.pug=actdocs/static/%.html)
pages    += $(markdown:src/%.md=actdocs/static/%.html)
demo_root = demo
demo      = $(pages:actdocs/static/%.html=$(demo_root)/%.html)
templates = $(src_templates:src/templates/%=actdocs/templates/%)

all : $(pages) $(templates) $(demo)

actdocs/static/%.html: src/%.pug $(templates)       ; pug < $< > $@
actdocs/templates/%  : src/templates/%              ; pug < $< > $@
actdocs/static/%.html: src/%.md  pandoc.md.template
	pandoc --template=./pandoc.md.template -o $@ $<
$(demo_root)         :                              ; mkdir -p $@
$(demo)              : $(demo_root) $(pages)
	TTREERC=ttree.cfg ttree
	rsync -r wwwdocs/* demo/
