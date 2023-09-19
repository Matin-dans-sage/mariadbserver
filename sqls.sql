-- database test create 
CREATE DATABASE test CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
-- user test create and grant setting
GRANT ALL PRIVILEGES ON test.* TO 'test'@localhost IDENTIFIED BY 'USER_PASSWORD';
GRANT ALL PRIVILEGES ON test.* TO 'test'@'%' IDENTIFIED BY 'USER_PASSWORD';
-- flush privileges
FLUSH PRIVILEGES;

-- use database test
USE test;


-- sample tables
CREATE TABLE tb_bbs (
    idx INT NOT NULL AUTO_INCREMENT,
    bbs_title VARCHAR(32) NOT NULL,
    use_yn CHAR(1) DEFAULT 'Y',
    del_yn CHAR(1) DEFAULT 'N',
    PRIMARY KEY(idx)
);

insert into tb_bbs(bbs_title) values('notice');
insert into tb_bbs(bbs_title) values('freeboard');
insert into tb_bbs(bbs_title) values('fileroom');