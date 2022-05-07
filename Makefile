VERSION := 0.0.1


build:
	docker build -t mocchi/mtg-api-cache-nginx:$(VERSION) .

run: build
	docker run --rm -it -p 50000:80 --name mtg-api-cache-nginx mocchi/mtg-api-cache-nginx:$(VERSION)

daemon: build
	docker run -d --rm -p 50000:80 --name mtg-api-cache-nginx mocchi/mtg-api-cache-nginx:$(VERSION)

stop:
	docker stop mtg-api-cache-nginx

logs:
	docker logs -f mtg-api-cache-nginx

exec:
	docker exec -it mtg-api-cache-nginx $(CMD)

push:
	docker push docker.io/mocchi/mtg-api-cache-nginx:$(VERSION)
