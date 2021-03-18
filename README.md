
# OPENPAY-SDK

## Run tests

```bash
openpay-sdk$ docker build . -t openpay-sdk:latest
```

```bash
openpay-sdk$ docker run --rm -e CLIENT_ID=mzdtln0bmtms6o3kck8f -e CLIENT_SECRET=sk_e568c42a6c384b7ab02cd47d2e407cab openpay-sdk:latest rake test
```
