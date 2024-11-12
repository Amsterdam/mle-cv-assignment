# On-Edge YOLO Object Detection

This repository contains a minimal on-edge object detection solution using YOLOv5, encapsulated in a Docker container. The solution detects objects in images captured by a vehicle (e.g., containers, garbage) with a focus on edge device deployment.

## Dataset

This project uses the [BDD100k dataset](https://bdd-data.berkeley.edu/) (10k test images subset), a large-scale dataset of street images. Full dataset and license information can be found on the BDD100k website.

## Directory Structure

```plaintext
2_solution_on_edge_implementation/
├── input/                    # Directory for input images
├── output/                   # Directory for processed images
└── run_inference.py          # Script to run YOLO inference
````

## Setup Instructions
1. Clone the Repository:

```bash
git clone https://github.com/Amsterdam/mle-cv-assignment.git
cd 2-solution-on-edge-implementation
```

2. Build Docker Image:
The Dockerfile is located in the root of the repository. Build the Docker image by running:
```bash
docker build -t yolo_on_edge .
```

3. Run Docker Container:

Run the container and mount the input and output directories for image processing:
```bash
docker run --rm -v $(pwd)/2-solution-on-edge-implementation/input:/usr/src/app/input -v $(pwd)/2-solution-on-edge-implementation/output:/usr/src/app/output yolo_on_edge
```

4. Check Output: Processed images with bounding boxes will appear in output/.

## Possible Improvements

- Optimize YOLO for lighter on-edge processing (e.g., use a smaller YOLO variant).
- Retrain YOLO on custom data to improve object detection accuracy.

*Note: Part of the Machine Learning Assignment for the Municipality of Amsterdam's Computer Vision Team interview.*
