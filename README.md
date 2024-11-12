# Machine Learning Assignment: On-Edge Object Detection

This project develops infrastructure for on-edge object detection, identifying items such as containers, garbage, and mobile toilets from street images captured by a vehicle in Amsterdam. Detected objects are checked against a database for illegal placement, with notifications sent via REST API if necessary. **Privacy**, **data minimalization**, and **anonymization** are core principles.

## Project Structure

The project is organized into three main folders, each corresponding to a specific task:

1. `1_solution_designing`: Contains architecture design for the solution.
2. `2_solution_on_edge_implementation`: Implements the YOLO-based object detection in Docker.
3. `3_cloud_ci_cd`: Contains the setup for the CI/CD pipeline and security checks.

Additionally, the root directory contains:
- `Dockerfile`: A minimal Dockerfile used for containerizing the YOLO-based object detection solution.
- `.github/workflows/ci-cd-pipeline.yml`: The GitHub Actions workflow that automates security checks and builds the Docker image.

## Tasks

- **Task 1: Solution Designing**  
  Design a secure, privacy-focused architecture for on-edge and cloud deployment.  
  *Deliverables*: Architecture schema and brief report.

- **Task 2: Solution On-Edge Implementation**  
  Implement a minimal YOLO-based solution in Docker.  
  *Deliverables*: Encapsulated solution in Docker and code on GitHub.

- **Task 3: Cloud CI/CD**  
  Set up a CI/CD pipeline in GitHub Actions for security checks and Docker build.  
  *Deliverables*: Pipeline documentation and code.

## Setup

This project uses **Poetry** for dependency management.

## Benefits

- **Security**: Automated vulnerability scanning and secure Docker image building.
- **Privacy and Anonymization**: Core principles applied throughout the solution.
  
*Note: Part of the Machine Learning Assignment for the Municipality of Amsterdam's Computer Vision Team interview.*
