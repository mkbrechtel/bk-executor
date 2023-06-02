#!/bin/sh

podman build -t orchestrator-tester orchestrator-tester

jo hello=world | podman run -i --rm orchestrator-tester
