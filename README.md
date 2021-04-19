
# OPENPAY-SDK

## Run Tests

```bash
openpay-sdk$ docker build . -t openpay-sdk:latest
```

```bash
openpay-sdk$ docker run --rm \
    -e CLIENT_ID=$(CLIENT_ID) \
    -e CLIENT_SECRET=$(CLIENT_SECRET) \
    openpay-sdk:latest rake test
```

## Run Tests Without Docker

```bash
openpay-sdk$ export CLIENT_ID=$(CLIENT_ID)
openpay-sdk$ export CLIENT_SECRET=$(CLIENT_SECRET)
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
    -e CLIENT_ID=$(CLIENT_ID) \
    -e CLIENT_SECRET=$(CLIENT_SECRET) \
    -v "$(pwd)":/app \
    openpay-sdk:latest sh
```

3.- Once inside the container, you could execute any command

```bash
/app$ rake test
```

Note: if you need install any gem you must run docker build
