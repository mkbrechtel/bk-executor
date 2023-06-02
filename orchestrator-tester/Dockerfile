FROM debian:bookworm

RUN apt-get update && apt-get install -y elvish

COPY tester.elv .

CMD elvish tester.elv
