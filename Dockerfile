FROM golang:1.9 as builder

# WORKDIR /go/src/github.com/etcinit/phabulous/

RUN go get -v -d github.com/etcinit/phabulous/cmd/phabulous \
  && go install github.com/etcinit/phabulous/cmd/phabulous


FROM alpine
MAINTAINER Rakshit Menpara <deltasquare4@gmail.com>

RUN apk --no-cache add ca-certificates

COPY --from=builder /go/bin/phabulous /go/bin/phabulous

EXPOSE 8085
ENTRYPOINT ["/go/bin/phabulous"]
CMD ["serve"]
