# dockerized-realots

NOTE: This will not work on windows or mac :(

read more: https://stackoverflow.com/questions/48915458/windows-run-docker-with-network-host-and-access-with-127-0-0-1

## Setup

1. Download realots files from otland (tibia-game.tarball.tar.gz). I will not provide these files here for obvious reasons.
2. Unpack it to tibia-game.tarball
3. Copy .tibia to tibia-game.tarball
4. Copy game to tibia-game.tarball/bin

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
