build:
	docker login
	docker build . -t mykali-docker

run:
	./script.sh
	docker run -v ${OLDPWD}/:/workspace -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -it --privileged --rm mykali-docker