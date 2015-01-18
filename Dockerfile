FROM python:2.7.9

RUN \
  git clone https://github.com/desaster/kippo.git /usr/src/kippo
WORKDIR /usr/src/kippo

COPY requirements.txt /usr/src/kippo/
COPY kippo.cfg /usr/src/kippo/
RUN pip install -r requirements.txt

RUN \
  sed -i kippo.tac -e "s/os.getuid() == 0/False/"

CMD ["twistd", "-ny", "kippo.tac"]
