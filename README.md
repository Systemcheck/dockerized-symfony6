<img align="right" width="175px" src="https://camo.githubusercontent.com/7e57ebd8fa0125653e3b41c87fc4d3a6b61964fc/687474703a2f2f692e696d6775722e636f6d2f7663355a56714c2e706e673f32" />

Symfony 6.3 + Docker + PHP 8.2 + MySQL + phpMyAdmin
[![by](https://img.shields.io/badge/by-Systemcheck-brightgreen)](https://github.com/Systemcheck) ![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/Systemcheck/dockerized-symfony6/symfony.yml?style=flat-square)
========================

The *unofficial* Symfony Docker Edition – by [@Systemcheck](https://github.com/Systemcheck)

This is an unofficial, open-source and community-driven boilerplate for Symfony projects, including database support. that run on [Docker](https://www.docker.com/). It's an attempt of standardizing and making it easier to bootstrap Symfony applications ready for development and production environments. The main tools used are Symfony, Docker and Docker Compose. Other things included are:

- PHP 8.2 + PHP-FPM
- Nginx
- Xdebug
- Opcache
- MySQL
- phpMyAdmin

Table of Contents
==================

- [ ](#-)
- [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [FAQ](#faq)

## Installation

> Before anything, you need to make sure you have Docker properly setup in your environment. For that, refer to the official documentation for both [Docker](https://docs.docker.com/) and [Docker Compose](https://docs.docker.com/compose/). Also, if you're developing on Mac or Windows – *yeah, maybe that's the case* –, make sure you have [Docker Machine](https://docs.docker.com/machine/) properly setup.

1 download/clone repo

```bash
git clone https://github.com/Systemcheck/dockerized-symfony6.git my-project
```

2 install dependencies (with composer of course)

```bash
composer install
```

3 build and run the containers:

```bash
docker-compose up -d --build
```

Once that's done, you should be able to access the application at //localhost:8080. The database should be migrated after containers are running.

## FAQ

Coming soon...

Enjoy!
