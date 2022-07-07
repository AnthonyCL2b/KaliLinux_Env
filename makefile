build:
	docker login
	docker build . -t mykali-docker

run:
	./script.sh
	docker run -it -v kali-volume:/workspace mykali-docker
