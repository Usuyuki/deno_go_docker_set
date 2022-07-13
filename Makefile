up:
	docker compose up -d
stop:
	docker compose stop
build:
	docker compose build --no-cache --force-rm
init:
	# freshは最新のが欲しいので毎回インストール(deno環境必要)
	# echo -y的なのを|で渡すとdenoがエラー吐くので自力で入力
	deno run -A -r https://fresh.deno.dev frontend 
	touch frontend/.env.example
	mkdir backend
	# goファイル*+ginないと最初の立ち上げ失敗するので……
	cp preparation/test.go_ backend/main.go
	cp preparation/go.mod_ backend/go.mod
	cp preparation/go.sum_ backend/go.sum
	cp preparation/.air.toml_ backend/.air.toml
	docker compose up -d --build
barth:
	docker-compose down --rmi all --volumes --remove-orphans
	rm -rf backend
	rm -rf frontend