## This program could run on Ubuntu, I already tested on Debian, and it did not work!! 
## <ins>That's why I used docker to run</ins>

# kmutnbSophos
Sophos client with Linux64 of Sophos network system using Docker

Setup:
1. Build the docker images first 
    ```bash
    docker compose build

2. Change the config file first
    - In the directory `caa` has file `caa.conf`
    - Add the Username and Password to the file. (Do not change Copernicus host)
    - Save it
    - IF NEEDS TO CHANGE <b>USERNAME</b> AND <b>PASSWORD</b>, COPY THIS TEMPLACE AND PLACE TO `caa.conf` FILE
        ```bash
        Copernicus host: <IPv4 Firewall Address>
        Username: <Username>
        Password: <Password>

    - IF DOCKER CONTAINER ARE STILL RESTARTING, CHECK THE `caa` DIRECTORY, IF THERE IS `caa.pid` FILE. REMOVE IT AND RUN CONTAINER AGAIN!!
        ```bash
        sudo rm -f caa.pid

3. Start the container up
    ```bash
    docker compose up -d

- IF NEEDS TO DOWN THE CONTAINER
    ```bash
    docker compose down

- IF NEEDS TO REMOVE THE DOCKER IMAGE
    ```bash
    docker rmi sophos:latest
