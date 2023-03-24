FROM debian:bookworm

# Install dependencies
RUN apt-get update && apt-get install -y \
    docker.io \
    elvish \
    curl

WORKDIR /opt/bk-orchestrator

COPY . .

# Run the orchestrator
CMD ["elvish", "bk-orchestrator.elv"]
