name ?= a.out

GO ?= go

.PHONY: all
all: build

.PHONY: build
build:
	$(GO) build -o $(name)

.PHONY: test
test:
	$(GO) test -v ./...

.PHONY: clean
clean:
	$(GO) clean

.PHONY: fclean
fclean: clean
	rm -f $(name)

.PHONY: re
re: fclean all
