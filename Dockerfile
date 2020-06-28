FROM golang:1.13

WORKDIR /app

COPY . .
RUN mv docs-example docs

RUN go build ./cmd/mailroom && chmod +x mailroom

EXPOSE 8090
ENTRYPOINT ["./mailroom"]