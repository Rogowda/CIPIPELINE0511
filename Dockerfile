FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENSE_KEY="123-0001-223"
LABEL MAINTAINER rohinibs@gmail.com
#RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "LICENSE_KEY is "$LICENSE_KEY
WORKDIR /code
CMD sh Sample.sh testfile
#ENTRYPOINT ["sh","Sample.sh"]
#CMD ["testfile"]
