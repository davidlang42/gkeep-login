FROM debian:bullseye
RUN apt update
RUN apt install -y python-is-python3 python3-pip
RUN apt-get install -y curl
RUN apt-get install ca-certificates
# RUN curl -L -o tmp/keep-it-markdown-0.5.2.tar.gz https://github.com/djsudduth/keep-it-markdown/archive/refs/tags/0.5.2.tar.gz
# RUN tar -zxvf tmp/keep-it-markdown-0.5.2.tar.gz
# RUN pip install -r keep-it-markdown-0.5.2/requirements.txt
RUN pip install gkeepapi
RUN pip install keyring
RUN pip install click
RUN pip install requests==2.23.0
RUN pip install gpsoauth==1.0.2
RUN pip install keyrings.alt
COPY --chmod=400 login.py /
COPY --chmod=500 docker_entrypoint.sh /
ENTRYPOINT [ "/docker_entrypoint.sh" ]