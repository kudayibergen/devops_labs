APP_PORT ?= 8080

run:
	APP_PORT=$(APP_PORT) go run ./cmd/server

curl:
	curl -s http://localhost:$(APP_PORT)/ ; echo
	curl -s http://localhost:$(APP_PORT)/healthz ; echo
	curl -s http://localhost:$(APP_PORT)/livez ; echo
