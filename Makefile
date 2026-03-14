.PHONY: up down clean logs build attack

up:
	docker-compose up -d

build:
	docker-compose up -d --build

down:
	docker-compose down

logs:
	tail -f logs/dvwa/access.log

# attack:
# 	@curl -s -o /dev/null -w "Status: %{http_code}\n" "http://localhost:8080/vulnerabilities/sqli/?id=1'+OR+'1'='1&Submit=Submit"