FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y wget curl unzip

WORKDIR /opt/neovim/
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz \
    && tar xzf nvim-linux64.tar.gz \
    && rm nvim-linux64.tar.gz

COPY env.sh /opt/neovim/.env.sh
COPY adeinit /opt/neovim/.adeinit

VOLUME /opt/neovim
CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]
