BUILD_TAG=flexget
RELEASE_TAG=flexget:2.18

.PHONY: build clean release

build:
	docker build . -t "${BUILD_TAG}"

release:
	docker build . -t "${RELEASE_TAG}"

clean:
	docker rmi "${BUILD_TAG}"
