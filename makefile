docs:
	wget http://apigen.org/apigen.phar
	chmod +x apigen.phar
	php apigen.phar generate --source=src,vendor --skip-doc-path="*/vendor/*" --destination=docs --template-theme=bootstrap
	rm apigen.phar

up:
	docker-compose up -d web

down:
	docker-compose stop -t0 web

test:
	[ $(UP) -eq 1 ] && make up || true
	$(eval cmd='docker-compose run web vendor/bin/phpunit')
	eval $(cmd); status=$$?; [ $(DOWN) -eq 1 ] && make down; exit $$status
