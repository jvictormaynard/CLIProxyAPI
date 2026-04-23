FROM eceasy/cli-proxy-api:v6.9.35

# Custom config for AMS deployment
COPY CLIProxyAPI/config.yaml /CLIProxyAPI/config.yaml
COPY config.example.yaml /CLIProxyAPI/config.example.yaml

# Management UI from AMS fork
RUN apk add --no-cache curl && \
    curl -sL https://github.com/jvictormaynard/Cli-Proxy-API-Management-Center/releases/download/v1.0.0-ams/management.html -o /CLIProxyAPI/management.html && \
    apk del curl
