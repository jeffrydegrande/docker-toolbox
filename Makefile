%: Dockerfile.%
	docker build -f $< -t jeffrydegrande/toolbox-$@ .
