
# Pull the base image
FROM golang:1.9
MAINTAINER Prince Raj <raaz.crzy@gmail.com>

# Set GOPATH
ENV GOPATH /go

# Make directories for api_frontend
RUN mkdir -p /go/src/github.com/raazcrzy/dummy-app

# Add api_frontend files
ADD . /go/src/github.com/raazcrzy/dummy-app

# Define working directory
WORKDIR /go/src/github.com/raazcrzy/dummy-app

# Restore Dependencies and Install Application
RUN \
	cd /go/src/github.com/raazcrzy/dummy-app && \
	go install

# Define default command
CMD ["/go/bin/dummy-app"]

# Expose Ports
EXPOSE 3000
