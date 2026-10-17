FROM alpine:latest
WORKDIR /app
COPY app.sh .
RUN chmod +x app.sh
EXPOSE 8080
CMD ["./app.sh"]
