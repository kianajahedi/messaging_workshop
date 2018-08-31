build:
	docker build -t registry.ucoder.ir/messaging_workshop:latest .

push: build
	docker push registry.ucoder.ir/messaging_workshop:latest

.PHONY: build push
