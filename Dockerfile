FROM ubuntu 
RUN apt-get update 
RUN apt-get install –y nginx 
EXPOSE 80
RUN echo Hi der Manali
CMD ["nignix”", "-g", "daemon off;"] 
