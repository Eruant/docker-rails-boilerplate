# base-rails-app

To use rails within docker user the folloping command

```
$ docker-compose run web <command>
````

Then add any of the following

```
# To start a new project
$ rails new . --force --database=postgresql

# Create a database
$ rake db:create

# Install gems
bundle install
```

## Useful commands

```
# start server
$ docker-compose up

# to re-build (e.g. after gem install)
docker-compose up --build

# stop server
$ docker-compose down
```

## Set up database to point at container

Change the file `config/database.yml`

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password:
  pool: 5

development:
  <<: *default
  database: src_development


test:
  <<: *default
  database: src_test
```

[For more info](https://docs.docker.com/compose/rails/)
