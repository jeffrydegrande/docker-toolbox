DOCKERFILES := $(suffix $(wildcard Dockerfile.*))

all: $(subst .,, $(DOCKERFILES))

%: Dockerfile.%
	docker build -f $< -t jeffrydegrande/toolbox-$@ .
