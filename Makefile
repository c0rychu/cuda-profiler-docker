.PHONY: run build clean

IMGNAME := cuda-pf

run:
	xhost +localhost
	docker run -v $(shell pwd):/${IMGNAME} --rm -e DISPLAY=host.docker.internal:0 -it ${IMGNAME}

build:
	docker build -t ${IMGNAME} .

clean:
	docker image rm ${IMGNAME} 

