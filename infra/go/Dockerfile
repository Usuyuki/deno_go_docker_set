FROM golang:1.18-bullseye
RUN apt-get update && \
    apt-get -y install git bash vim && \
    apt-get clean && \
rm -rf /var/lib/apt/lists/
RUN mkdir /backend
WORKDIR /backend
ADD ../../backend /backend

RUN go install
RUN go get -u github.com/cosmtrek/air && \
    go build -o /go/bin/air github.com/cosmtrek/air

# ENTRYPOINT ["go", "run", "main.go"]
ENTRYPOINT ["export", "GIN_MODE=debug", ".air.toml"]
ENTRYPOINT ["air", "-c", ".air.toml"]