```
1. 서버에 해당 파일들을 동일 경로에 묶어서 업로드
2. 해당 경로로 이동
3. mariadb_make.sh 스크립트 실행 
   (sh mariadb_make.sh)
4. y : 설치 / n : 취소
```

```
1. mariadb_make.sh 파일 내부에 CONTAINER_NAME은 도커파일을 품고 있는 폴더명과 동일하게 설정한다.
2. mariadb_make.sh 파일 내부에 DOCKER_NAMES는 docker-compose.yml의 container_name과 동일하게 맞춘다.
3. sql을 import하려면 docker-compose.yml에서 volumes을 설정하면 된다. 
   docker-entrypoint-initdb.d 폴더 속에 sql파일이 존재하면 컨테이너 올라오면서 내부에 존재하는 sql파일을
   실행시킨다.
```