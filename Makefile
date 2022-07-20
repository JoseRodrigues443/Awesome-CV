.PHONY: josemiguel443

CC = xelatex
WORK_DIR = josemiguel443
RESUME_DIR = josemiguel443/resume
CV_DIR = josemiguel443/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(WORK_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(WORK_DIR) $<

cv.pdf: $(WORK_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(WORK_DIR) $<

coverletter.pdf: $(WORK_DIR)/coverletter.tex
	$(CC) -output-directory=$(WORK_DIR) $<

clean:
	rm -rf $(WORK_DIR)/*.pdf
