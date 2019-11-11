FROM sharkvan/phoenix

RUN useradd -m dev

RUN apt-get install -y vim man

RUN cd /opt && \
	curl  -L https://github.com/libevent/libevent/releases/download/release-2.1.11-stable/libevent-2.1.11-stable.tar.gz | tar xz && \
	cd libevent-2.1.11-stable && \
	./configure && \
	make && \
	make install

RUN	cd /opt && \
	curl -L https://github.com/tmux/tmux/releases/download/2.9a/tmux-2.9a.tar.gz | tar xz && \
	cd tmux-2.9a && \	
	./configure --enable-static && \
	make && \
	make install

USER dev

CMD ["bash"]
