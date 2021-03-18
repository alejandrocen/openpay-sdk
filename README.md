
# OPENPAY-SDK

## Run Tests

```bash
openpay-sdk$ docker build . -t openpay-sdk:latest
```

```bash
openpay-sdk$ docker run --rm \
    -e CLIENT_ID=mzdtln0bmtms6o3kck8f \
    -e CLIENT_SECRET=sk_e568c42a6c384b7ab02cd47d2e407cab \
    openpay-sdk:latest rake test
```

## Run Tests Without Docker

```bash
openpay-sdk$ export CLIENT_ID=mzdtln0bmtms6o3kck8f
openpay-sdk$ export CLIENT_SECRET=sk_e568c42a6c384b7ab02cd47d2e407cab
```

```bash
openpay-sdk$ bundle install
```

```bash
openpay-sdk$ rake test
```

## Development Mode

1.- Build docker image

```bash
openpay-sdk$ docker build . -t openpay-sdk:latest
```

2.- Run container with bind mount flag to current directory

```bash
 openpay-sdk$ docker run --rm -it \
    -e CLIENT_ID=mzdtln0bmtms6o3kck8f \
    -e CLIENT_SECRET=sk_e568c42a6c384b7ab02cd47d2e407cab \
    -v "$(pwd)":/app \
    openpay-sdk:latest sh
```

3.- Once inside the container, you could execute any command

```bash
/app$ rake test
```

Note: if you need install any gem you must run docker build
