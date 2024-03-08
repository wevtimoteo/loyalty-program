# Setup

In order to install tools to run the application
you can follow the commands below.

## Installation

If you use [asdf](https://github.com/asdf-vm/asdf) version manager
or any other that supports `.tool-versions` file, you
can just run:

```bash
asdf install
```

This will install Ruby and Redis on specified version in
`.tool-versions`.

### Starting Redis

```bash
redis-server
```

### Dependencies

Just run default bundler command:

```bash
bundle install
```
