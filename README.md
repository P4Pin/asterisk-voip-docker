# Asterisk VoIP Docker

A clean and reproducible Docker-based Asterisk setup for local VoIP labs, SIP testing, and PBX experimentation.

## Overview

This project provides a minimal and structured environment to run Asterisk inside Docker.

It is designed for:
- VoIP lab environments
- SIP configuration testing
- PBX experimentation
- learning and research purposes

The repository separates reusable templates from local runtime configuration to avoid committing sensitive data.

## Features

- Dockerized Asterisk setup
- Simple startup via Docker Compose
- Clean project structure
- Safe configuration handling using .example files
- Ready for local VoIP lab usage

## Project Structure

```text
.
├── Dockerfile
├── docker-compose.yml
├── entrypoint.sh
├── config/
│   ├── extensions.conf
│   ├── modules.conf
│   ├── pjsip.conf.example
│   └── voicemail.conf.example
├── .gitignore
├── .gitattributes
├── CONTRIBUTING.md
├── LICENSE
└── README.md
```

## Requirements

- Docker
- Docker Compose

## Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/P4Pin/asterisk-voip-docker.git
cd asterisk-voip-docker
```

### 2. Create local configuration files

```bash
cp config/pjsip.conf.example config/pjsip.conf
cp config/voicemail.conf.example config/voicemail.conf
```

On Windows (PowerShell):

```powershell
Copy-Item config\pjsip.conf.example config\pjsip.conf
Copy-Item config\voicemail.conf.example config\voicemail.conf
```

### 3. Configure Asterisk

Edit:
- config/pjsip.conf
- config/voicemail.conf
- config/extensions.conf

### 4. Start the environment

```bash
docker compose up --build
```

Run in background:

```bash
docker compose up -d --build
```

### 5. Stop the environment

```bash
docker compose down
```

## Configuration Strategy

Sensitive configuration is not stored in the repository.

Templates are provided:
- pjsip.conf.example
- voicemail.conf.example

Create local copies before running the project.

## Configuration Notes

extensions.conf - dialplan logic  
modules.conf - module loading  
pjsip.conf - SIP configuration  
voicemail.conf - voicemail setup  

## Use Cases

- Local VoIP lab
- SIP client testing
- PBX experimentation
- Learning Asterisk

## Security Notice

This project is intended for:
- local development
- lab environments
- testing purposes only

Do not:
- expose services publicly without proper security
- commit real credentials
- use production secrets

## Development Workflow

```bash
git pull
docker compose up --build
```

After changes:

```bash
git add .
git commit -m "update configuration or docs"
```

## Roadmap

- Add health checks
- Provide sample SIP configurations
- Improve documentation

## Contributing

See CONTRIBUTING.md

## License

MIT License
