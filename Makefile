dockerenvclean:
	docker container prune -f
	docker image prune -f

dockerenvbuild:
	docker image build -t mrpau:latest .

dockerenvdist:
	docker run -v $$PWD/dist:/magicrepodist mrpau:latest

dist:
	mkdir -p out/installer
	python make_something.py