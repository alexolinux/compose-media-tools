# Makefile

# Default target if no target is specified
.DEFAULT_GOAL := help

# Define Docker Compose file and .env file path
COMPOSE_FILE := docker-compose.yml
ENV_FILE := .env

# Check if .env file exists, load it if present
check-env:
	@if [ -f $(ENV_FILE) ]; then \
		echo "Loading environment variables from $(ENV_FILE)..."; \
		export $$(cat $(ENV_FILE) | xargs); \
	else \
		echo "$(ENV_FILE) file not found!"; \
		exit 1; \
	fi

# Start Docker Compose
start: check-env
	@echo "Starting Docker Compose..."
	@export $$(cat $(ENV_FILE) | xargs) && docker-compose -f $(COMPOSE_FILE) up -d

# Stop Docker Compose
stop:
	@echo "Stopping Docker Compose..."
	@docker-compose -f $(COMPOSE_FILE) down

# Restart Docker Compose
restart: stop start

# Help command
help:
	@echo "Usage:"
	@echo "  make start       Start the Docker Compose environment"
	@echo "  make stop        Stop the Docker Compose environment"
	@echo "  make restart     Restart the Docker Compose environment"
	@echo "  make help        Display this help message"

