#!/bin/bash
SHELL := bash

.PHONY: help
help:
	@echo "make up - Run Jupyter server and build docker image if necessary."

.PHONY: up
up:
	@docker-compose -f docker-compose.yaml up jupyter
