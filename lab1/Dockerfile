FROM nginx:stable-alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app
USER appuser

COPY ./configuration /etc/nginx
EXPOSE 80