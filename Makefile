.PHONY: help install local local-drafts ls-drafts build clean

help:
	@echo "Commands:"
	@echo "  make install       - Install Ruby gem dependencies (run once after clone)"
	@echo "  make local         - Run dev server (excludes published: false)"
	@echo "  make local-drafts  - Run dev server including drafts"
	@echo "  make ls-drafts     - List drafts in terminal"
	@echo "  make build         - Build the site to _site/"
	@echo "  make clean         - Remove _site/"

install:
	bundle install

local:
	bundle exec jekyll serve

local-drafts:
	JEKYLL_ENV=development bundle exec jekyll serve --unpublished

ls-drafts:
	@echo "=== drafts (published: false) ==="
	@grep -rl "^published: false" _posts _thoughts 2>/dev/null || echo "(none)"

build:
	bundle exec jekyll build

clean:
	rm -rf _site
