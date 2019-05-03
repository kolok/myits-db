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
  $ docker exec -i myits-db psql -p 5432 -h 127.0.0.1 -U myits-user < db-files/myits.00.db.sql
~~~~

## Import MyITS feature one by one

~~~~
  $ docker exec -i myits-db psql -p 5432 -h 127.0.0.1 -U myits-user < db-files/myits.01.users.sql
~~~~

## Import MyITS database and its features in a one liner

~~~~
  $ cat db-files/myits.* | docker exec -i myits-db psql -p 5432 -h 127.0.0.1 -U myits-user
~~~~

## Connect to DB 

~~~~
  $ docker exec -ti myits-db psql -p 5432 -h 127.0.0.1 -U myits-user
~~~~

# Expore the DB

~~~~
  $> \c myitsdb;
  $> select * from users;...
~~~~

# Usefull links

* http://www.postgresqltutorial.com/
* https://www.youtube.com/watch?v=jNq5EAb2biY&list=PLk1kxccoEnNEtwGZW-3KAcAlhI_Guwh8x

Main Postgresql command:
* https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546
