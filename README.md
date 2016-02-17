Example of usage on hello world app:

```yaml
app1:
  image: dockercloud/hello-world
app2:
  image: dockercloud/hello-world
web:
  image: mssio/nginx
  links:
    - app1:app_1
    - app2:app_2
  environment:
    - APP_COUNT=2
    - APP_PORT_1=80
    - APP_DOMAIN_1=web1.mss.io
    - APP_PORT_2=80
    - APP_DOMAIN_2=web2.mss.io
  ports:
    - 10099:80
```

Now the nginx will run on public port 10099.
