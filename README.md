# Instructions

You can run the app in a docker container:
1. Build an image `docker build -t fastapi:latest .`
2. Run a container `docker run --name fast-container -p "8080:8080" --rm  fastapi:latest`


Or you can run it locally, 
1. Setup a venv environment `python3 -m venv venv`
2. Activate the env `source ./venv/bin/activate`
3. Install poetry `pip install -U pip setuptools & pip install poetry`
4. Install dependencies `poetry install`
5. Start the app `poetry run python -m app.main`