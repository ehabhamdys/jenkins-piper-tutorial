# Step 1: Choose the base image
FROM python:3.11

# Step 2: Set the working directory in the Docker image
WORKDIR /app

# Step 3: Install Poetry
RUN pip install poetry

# Step 4: Copy pyproject.toml and poetry.lock files
COPY pyproject.toml poetry.lock ./

# Step 5: Install dependencies
RUN poetry install --no-dev --no-interaction --no-ansi

# Step 6: Copy the rest of your application's source code
COPY . .

# Step 7: Expose the port your application runs on
EXPOSE 8080

# Step 8: Define the command to run your app
CMD ["poetry", "run", "python", "-m", "app.main"]