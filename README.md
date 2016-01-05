Example of usage on hello world app:

```yaml
app:
  image: tutum/hello-world
web:
  image: mssio/nginx
  links:
    - app:app
  environment:
    - APP_PORT=80
    - SERVER_DOMAIN_NAME=www.mss.io
  ports:
    - "10099:80"
```

Now the nginx will run on public port 10099.
