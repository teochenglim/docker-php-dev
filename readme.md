# Docker Compose Setup

This repository contains a Docker Compose setup with Nginx, PHP-FPM, and MySQL.

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Running the Application

```bash
git clone https://github.com/your-username/your-repository.git
cd your-repository
docker-compose up

# Access the application:
# Nginx: http://localhost:8080
# PHP info: http://localhost:8080/phpinfo.php
```

### troueboeshoot

```bash
docker-compose logs -f my_mysql  # Wait for MySQL to be ready

### delete everything and start again
docker-compose down
rm -rf mysql_data
``` 

### Additional Notes

- Nginx serves files from the `./src/` directory.
- Customize PHP configuration in `./php/php.ini`.
- Adjust Nginx configuration in the `./nginx-config` directory.
- MySQL initialization script is located in the `./mysql-init` directory.
- MySQL data scripts are stored in the `./mysql_data` directory.
- Build custom PHP-FPM using the `./Dockerfile`.