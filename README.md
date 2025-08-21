# sql_playground

docker-compose up -d

Install SQLTools in VS Code

Or install psql (CLI client for PostgreSQL)

sudo apt-get update && sudo apt-get install -y postgresql-client

Connexion

psql -h localhost -U admin -d bd_playground

Execute init.sql

docker cp init.sql postgres_playground:/init.sql
docker exec -it postgres_playground psql -U admin -d postgres -f /init.sql