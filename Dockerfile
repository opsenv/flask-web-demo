FROM python:2.7.14-alpine

LABEL author="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk add --no-cache gcc musl-dev openssl-dev libffi-dev
COPY . /skeleton
WORKDIR /skeleton
RUN pip install -r requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
EXPOSE 5000
ENTRYPOINT ["sh", "scripts/dev.sh"]
