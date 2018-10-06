# docker-copl-tools

Dockerfile for [aigarashi/copl-tools](https://github.com/aigarashi/copl-tools).

## Usage

Build the image.

```sh
docker build -t copl-tools .
```

Run derivation checker.

```sh
echo 'Z plus Z is Z ?' | docker run --rm -i copl-tools checker -game Nat
```
