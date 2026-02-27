up:
	docker compose up -d

down:
	docker compose down

rebuild:
	docker compose up --build -d

logs:
	docker compose logs -f

ps:
	docker compose ps