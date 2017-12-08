dockerenvclean:
	docker container prune -f
	docker image prune -f

dockerenvbuild:
	docker image build -t mrpau:latest .

dockerenvdist:
	docker run -v $$PWD/out:/magicrepodist mrpau:latest

dist:
	python make_something.py