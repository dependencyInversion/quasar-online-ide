# quasar-online-ide
A simple PoC to integrate an IDE into your website using Vue, Quasar, and VS Code Server


## How to build?
```bash
docker compose build app code-server
```
> Tipp: add `--no-cache` if you have trouble applying changes

## How to start the setup?
```bash
docker compose up app code-server -d
```
> `-d` or `--detach` is used to let your services run in the background ("demonized")

## How to stop the setup?
```bash
docker compose down
```