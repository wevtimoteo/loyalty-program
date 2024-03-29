# Docker Setup

In order to use [Docker](https://www.docker.com/)
to run the application you should follow this guide.

## Building and running application

```bash
docker compose up
```

This will pull `redis` image and build app development image.
Then it will start the application.

You can also use `-d` option to daemonize docker compose:

```bash
docker compose up -d
```

### Stopping application

```bash
docker compose down
```

This will stop and remove ephemeral containers (keeping
existing volumes such as database and dependencies cache).

## Running Tests

To run tests inside the running container:

```bash
docker compose exec app bin/rake test
```

### Running individual test file

```bash
docker compose exec app ruby -Itest test/loyalty_program_cli_test.rb
```
