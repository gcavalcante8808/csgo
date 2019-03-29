## Requirements

Docker and docker-compose installed.

## Setup

Clone the project and create a `.env` file in the directory with the following environment variables:

 - SRCDS_TOKEN: Steam Token as specified in https://steamcommunity.com/dev/managegameservers;
 - SRCDS_RCONPW: Password to connect
 - SRCDS_PW: Passowrd to connect (2?)

## Instalation/Deploy

In the directory of the project use the command `docker-compose up -d`. After some minutes (the time to download, extract and copy ~20G into the volume created by docker-compose) the game can be acessed in the port `27015`.

## Troubleshooting

You can view the logs of the application using the command `docker-compose logs`. Sometimes, when the container get stuck, just restart it using the `docker-compose restart` command.

#### I cant connect to the port of the server. What should I do?

Check if docker is listening in the desired ports using the command `ss -plnt` (you need to have iproute2 package installed to use ss).

You can use `docker top <ID OF CONTAINER` as well to check if all processes are running.
