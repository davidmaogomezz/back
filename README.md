# Backend test shipit

## How to use

1. Clone this repo
1. Install PostgreSQL in case you don't have it
1. Run `bootstrap.sh` with the name of your your project like `./bootstrap.sh my_awesome_project`
1. `rspec` and make sure all tests pass
1. `rails s`
1. You can now try your REST services!

## How to use with docker

1. Have `docker` and `docker-compose` installed (You can check this by doing `docker -v` and `docker-compose -v`)
2. Modify the following lines in the `database.yml` file:
  ``` yaml
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: 5
    username: postgres
    password: postgres
    host: db
    port: 5432
  ```
3. Generate a secret key for the app by running `docker-compose run --rm --entrypoint="" web rake secret`, copy it and add it in your environment variables.
4. Run `docker-compose run --rm --entrypoint="" web rails db:create db:migrate`.
   1. (Optional) Seed the database with an AdminUser for use with ActiveAdmin by running `docker-compose run --rm --entrypoint="" web rails db:seed`. The credentials for this user are: email: `admin@example.com` ; password: `password`.
5. (Optional) If you want to deny access to the database from outside of the `docker-compose` network, remove the `ports` key in the `docker-compose.yml` from the `db` service.
6. (Optional) Run the tests to make sure everything is working with: `docker-compose run --rm --entrypoint="" web rspec .`.
7. Run the application with `docker-compose up`.
8. You can now try your REST services!
