REVISION=$(shell git rev-parse --short HEAD)

build: main.go
	GOOS=linux GOARCH=amd64 go build -o isuconquest

deploy: build
	ssh isucon@isucon12 sudo systemctl stop isuconquest.go.service
	scp -P 22 isuconquest isucon@isucon12:/home/isucon/webapp/go
	ssh isucon@isucon12 sudo systemctl start isuconquest.go.service
	ssh isucon@isucon12 sudo systemctl enable isuconquest.go.service
