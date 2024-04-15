FROM alpine:latest

ARG COOK_VERSION=0.8.0

RUN apk add --no-cache \
    ca-certificates \
    unzip \
    wget \
    tar \
    zlib-dev

ADD https://github.com/cooklang/cookcli/releases/download/v${COOK_VERSION}/cook-x86_64-unknown-linux-gnu.tar.gz /app/CookCLI/CookCLI.tar.gz

RUN mkdir -p /app/CookCLI && tar -xzf /app/CookCLI/CookCLI.tar.gz -C /app/CookCLI
RUN chmod +x /app/CookCLI/cook
RUN rm /app/CookCLI/CookCLI.tar.gz
