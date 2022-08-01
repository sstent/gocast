.PHONY: all gocast test

all:
	$(MAKE) gocast

gocast:
	go build -mod=vendor .

debug:
	go build -mod=vendor -race .

test:
	go test -v -race -short -failfast -mod=vendor ./...

linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o gocast -mod=vendor .

linux_arm:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm go build -o gocast -mod=vendor .

linux_arm64:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o gocast -mod=vendor .

