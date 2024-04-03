# helper commands for ak-tools

# note: "help" MUST be the first target in the file,
# when the user types "make" they should get help info
help:
	@echo ""
	@echo "Helper commands for AIRR Knowledge toolkit"
	@echo ""
	@echo "make docker       -- Build docker image from local source"
	@echo ""

docker:
	docker build . -t airrknowledge/ak-tools

