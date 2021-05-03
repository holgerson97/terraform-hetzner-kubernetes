VERSION		?= $(shell git describe --tags --always --dirty --match=v* 2> /dev/null || cat $(PWD)/.version 2> /dev/null || echo v0)
PACKAGES	?= $(shell go list ./...)
GOFILES		?= $(shell find . -type f -name '*.go' -not -path "./vendor/*")

.PHONY: help clean env
.ONESHELL: #

default: help

help: 
	@echo 'usage: make [target] ...'

## TODO add tools

env:  ## Print env vars
	echo $(VERSION)
	echo $(PACKAGES)
	echo $(VERSION)

gofmt:  ## format the go source files
	go fmt ./...
	goimports -w $(GOFILES)

golint: ## run go lint on the source files
	golint $(PACKAGES)

govet:  ## run go vet on the source files
	go vet ./...

go-all: gofmt golint govet

gotest-basic: ## test units files
	cd unit-tests/
	go test terraform_test.go -run TestInitAndApplyAndIdempotent -v -timeout 60m

gotest-required:
	cd unit-tests/
	go test terraform_test.go -run TestAzureResourcesRequired -v -timeout 60m

gotest-optional:
	cd unit-tests/
	go test terraform_test.go -run TestAzureResourcesOptional -v -timeout 60m

gotest-all:
	cd unit-tests/
	go test -v -timeout 60m

terrainit:
	cd examples/
	terraform init

terrafmt:  ## format terrafrom source files
	terraform fmt -recursive

terralint: ## lint terraform source files
	tflint module/
	tflint examples/

terravalidate: ## valdiate terraform configuration
	cd examples/
	terraform init
	terraform validate

terraApplyAndDestroy: ## Init, Apply and Destroy Terraform configuration
	cd examples
	terraform init
	terraform apply --auto-approves
	terraform destroy --auto-approve

terra-all: terrafmt terralint terravalidate

clean:
	go clean
	find -name "*hcl" -delete
	find -type d -name ".terraform" -exec rm -rf {} +
	find -name "*tfstate" -delete
	find -name "*tfstate.backup" -delete