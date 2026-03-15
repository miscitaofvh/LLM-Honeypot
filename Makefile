.PHONY: up down clean

up:
	docker-compose up -d --build
	@sleep 5
	@docker exec suricata_ids suricata-update
	@docker restart suricata_ids

down:
	docker-compose down

clean:
	docker-compose down -v
	@rm -rf logs/dvwa/* logs/suricata/*
	@mkdir -p logs/dvwa logs/suricata
	@touch logs/dvwa/access.log logs/dvwa/error.log