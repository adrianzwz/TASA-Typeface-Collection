SOURCES=$(shell python3 scripts/read-config.py --sources )
FAMILY=$(shell python3 scripts/read-config.py --family )

help:
	@echo "###"
	@echo "# Build targets for $(FAMILY)"
	@echo "###"
	@echo
	@echo "  make build:  Builds the fonts and places them in the fonts/ directory"
	@echo "  make test:   Tests the fonts with fontspector"
	@echo "  make proof:  Creates HTML proof documents in the proof/ directory"
	@echo "  make images: Creates PNG specimen images in the documentation/ directory"
	@echo

build: build.stamp

venv: venv/touchfile

customize: venv
	. venv/bin/activate; python3 scripts/customize.py

build.stamp: venv sources/config-TASAExplorer.yaml $(SOURCES)
	rm -rf fonts
	(for config in sources/config*.yaml; do . venv/bin/activate; gftools builder $$config; done)  && touch build.stamp

venv/touchfile: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/touchfile

test: build.stamp
	TOCHECK=$$(find fonts/TASAExplorer/variable -type f 2>/dev/null); if [ -z "$$TOCHECK" ]; then TOCHECK=$$(find fonts/TASAExplorer/ttf -type f 2>/dev/null); fi ; . venv/bin/activate; mkdir -p out/ out/fontbakery; mkdir -p out/badges/TASAExplorer; fontbakery check-googlefonts -l WARN --full-lists --succinct --badges out/badges/TASAExplorer --html out/fontbakery/TASAExplorer-fontbakery-report.html --ghmarkdown out/fontbakery/TASAExplorer-fontbakery-report.md $$TOCHECK  || echo '::warning file=sources/config-TASAExplorer.yaml,title=Fontbakery failures::The fontbakery QA check reported errors in your font. Please check the generated report.'
	TOCHECK=$$(find fonts/TASAOrbiter/variable -type f 2>/dev/null); if [ -z "$$TOCHECK" ]; then TOCHECK=$$(find fonts/TASAOrbiter/ttf -type f 2>/dev/null); fi ; . venv/bin/activate; mkdir -p out/ out/fontbakery; mkdir -p out/badges/TASAOrbiter; fontbakery check-googlefonts -l WARN --full-lists --succinct --badges out/badges/TASAOrbiter --html out/fontbakery/TASAOrbiter-fontbakery-report.html --ghmarkdown out/fontbakery/TASAOrbiter-fontbakery-report.md $$TOCHECK  || echo '::warning file=sources/config-TASAOrbiter.yaml,title=Fontbakery failures::The fontbakery QA check reported errors in your font. Please check the generated report.'

proof: venv build.stamp
	TOCHECK=$$(find fonts/TASAExplorer/variable -type f 2>/dev/null); if [ -z "$$TOCHECK" ]; then TOCHECK=$$(find fonts/TASAExplorer/ttf -type f 2>/dev/null); fi ; . venv/bin/activate; mkdir -p out/ out/proof/TASAExplorer; diffenator2 proof $$TOCHECK -o out/proof/TASAExplorer
	TOCHECK=$$(find fonts/TASAOrbiter/variable -type f 2>/dev/null); if [ -z "$$TOCHECK" ]; then TOCHECK=$$(find fonts/TASAOrbiter/ttf -type f 2>/dev/null); fi ; . venv/bin/activate; mkdir -p out/ out/proof/TASAOrbiter; diffenator2 proof $$TOCHECK -o out/proof/TASAOrbiter

%.png: %.py build.stamp
	. venv/bin/activate; python3 $< --output $@

clean:
	rm -rf venv
	find . -name "*.pyc" -delete

update-project-template:
	npx update-template https://github.com/googlefonts/googlefonts-project-template/

update: venv
	venv/bin/pip install --upgrade pip-tools
	# See https://pip-tools.readthedocs.io/en/latest/#a-note-on-resolvers for
	# the `--resolver` flag below.
	venv/bin/pip-compile --upgrade --verbose --resolver=backtracking requirements.in
	venv/bin/pip-sync requirements.txt

	git commit -m "Update requirements" requirements.txt
	git push
