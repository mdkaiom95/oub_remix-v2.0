# We're using Ubuntu 20.10
FROM sahyam/docker:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b sql-extended https://github.com/mdkaiom95/oub_remix-v2.0 /root/userbot
RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/mdkaio95/oub_remix-v2.0/sql-extended/requirements.txt

CMD ["python3","-m","userbot"]
