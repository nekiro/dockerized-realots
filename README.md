# dockerized-realots

## Setup

1. Download realots files from otland (tibia-game.tarball.tar.gz). I will not provide these files here for obvious reasons.
2. Unpack it to tibia-game.tarball
3. Copy .tibia to tibia-game.tarball

## Run

Start

```
docker-compose up -d --force-recreate --build
```

Stop

```
docker-compose down
```

Phpmyadmin: http://localhost:8080

User: root

Pass: empty
