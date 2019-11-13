FROM sharkvan/phoenix

RUN useradd -m dev

RUN apt-get install -y man

RUN cd /home/dev && \
    git init && \
    git remote add origin https://github.com/sharkvan/dotfiles.git && \
    git fetch && \
    git checkout -ft origin/master && \
    chown -R dev:dev . && \
    ./.setup.sh && \
    chown -R dev:dev .

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT "/entrypoint.sh"

USER dev

CMD ["bash"]
