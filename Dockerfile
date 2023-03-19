FROM python:3.10.5

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app/
RUN pip install --no-cache-dir -r requrements.txt

ENV TZ Europe/Moscow
ENV TOKEN_USER=
ENV VERSION=
ENV DOMAIN=

CMD ["python","vk_stat.py"]