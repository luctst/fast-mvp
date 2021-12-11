# fast-mvp
Quickly test your ideas on market

## Run:
```
docker-compose up -d --build
```

## Fix:
Lint:
```
docker-compose exec -it <app|api> bash -c "./node_modules/.bin/vue-cli-service lint --fix"
```

> **Note** Replace <> by your container name either app or api
