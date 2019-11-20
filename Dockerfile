# Note that before building this image the following command needs
# to be run in the root of the repo.  The binary is not pushed into
# version control and I build on Mac so the OS and ARCH must be 
# set to get a cross-compiled build.
#
# env GOOS=linux GOARC=amd64 go build -o bin/static-server

FROM golang

# The go binary answers on port 8080.  Run the container with 
# -p 8080:8080 to connect.
EXPOSE 8080

# The golang image includes a bin folder already in the image $PATH.
COPY bin/static-server bin/static-server
COPY www www

ENV WWW=/go/www

CMD [ "static-server" ]
