# MyITS DB

Here is the README related to the Postgresql database

DB is implement as a docker in the docker-compose.yml file
To launch the Database as a daemon in a docker
Execute following command from the base of the project

~~~~
  $ mkdir -p /var/lib/postgresql/data/myitsdata
  $ docker-compose up -d
~~~~

## Import MyITS Database (if needed)

~~~~
  $ docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user < myits-db/myits.00.db.sql
~~~~

## Import MyITS feature one by one

~~~~
  $ docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user < myits-db/myits.01.users.sql
~~~~

## Import MyITS database and its features in a one liner

~~~~
  $ cat myits-db/myits.* | docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user
~~~~

## Connect to DB 

~~~~
  $ docker exec -ti technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user
~~~~

# Expore the DB

~~~~
  $> \c myitsdb;
  $> select * from users;...
~~~~

# Usefull links

http://www.postgresqltutorial.com/
* https://www.youtube.com/watch?v=jNq5EAb2biY&list=PLk1kxccoEnNEtwGZW-3KAcAlhI_Guwh8x


