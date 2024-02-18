FROM debian:bullseye
RUN apt update
RUN apt install -y python-is-python3 python3-pip
RUN pip install gkeepapi
RUN pip install gpsoauth==1.0.2
COPY --chmod=400 login.py /
COPY --chmod=500 docker_entrypoint.sh /
ENTRYPOINT [ "/docker_entrypoint.sh" ]