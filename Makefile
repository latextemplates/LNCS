sources = paper.tex
llncs-class = llncs.cls

.PHONY: clean reformat split-sentences indent

compile: $(sources)
	latexmk $(sources)

$(sources): $(llncs-class)
$(llncs-class): download

download:
ifeq (,$(wildcard ./$(llncs-class)))
	./download-llncs-files-from-springer.sh
endif

format:
	latexindent -l -s -sl -w $(sources)

indent:
	latexindent -y="indentPreamble:1,defaultIndent:'  '" -m -w $(sources)

split-sentences:
	latexindent -m -l -s -sl -w $(sources)

clean:
	latexmk -c
