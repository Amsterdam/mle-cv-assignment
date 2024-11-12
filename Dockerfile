# Use the minimal Ultralytics YOLO image
FROM ultralytics/yolov5:latest

# Set working directory in Docker
WORKDIR /usr/src/app

# Copy Poetry files from the root directory
COPY pyproject.toml poetry.lock ./

# Install Poetry
RUN pip install poetry

# Install dependencies without creating a virtual environment
RUN poetry config virtualenvs.create false \
    && poetry install --no-dev

# Copy all project files into the Docker container, preserving folder structure
COPY . .

# Change to the folder for Task 2 if needed when running the inference script
WORKDIR /usr/src/app/2_solution_on_edge_implementation

# Default command to run inference
CMD ["python", "run_inference.py"]
