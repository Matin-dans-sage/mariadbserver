<img src="https://img.shields.io/badge/MARIADB%20SERVER-003545?style=for-the-badge&logo=mariadb&logoColor=white"> <img src="https://img.shields.io/badge/DOCKER-2496ED?style=for-the-badge&logo=Python&logoColor=white">


## Installation

```bash
git clone https://github.com/Matin-dans-sage/mariadbserver.git

cd ./mariadbserver

vi ./docker-compose.yml
(line 9, 22) Change for networks name

vi ./Dockerfile
(line 3) Change for USER_ROOT_PASSWORD.

vi ./sqls.sql
(You can configure the database and user.)

sh ./mariadb_make.sh
(y : install / n : cancel)

```

## Notice !

1. Set CONTAINER_NAME inside the mariadb_make.sh file to be the same as the folder name containing the Dockerfile.
2. Ensure that DOCKER_NAMES inside the mariadb_make.sh file matches the container_name in the docker-compose.yml file.
3. To import SQL files, configure volumes in the docker-compose.yml file. If there are SQL files inside the docker-entrypoint-initdb.d folder, the container will execute those SQL files when it starts up.
