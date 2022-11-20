install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
lint:
	pylint --disable=R,C *.py 

test:
	python -m pytest -vv --cov=main test_*.py

format:
	black *.py
	
deploy:
	echo "deploy here mdfkr"

all: install lint test format deploy