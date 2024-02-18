FROM debian:bullseye
RUN apt update
RUN apt install -y --no-install-recommends python3 pip
RUN pip install gkeepapi
RUN pip install gpsoauth==1.0.2
COPY login.py /
ENTRYPOINT [ "python3" ]
CMD [ "/login.py" ]