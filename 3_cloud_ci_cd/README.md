# Cloud CI/CD for On-Edge Object Detection

This folder contains documentation for the **CI/CD pipeline** built with **GitHub Actions** to automate security checks and Docker image builds for the on-edge object detection solution.

## Folder Structure

- `.github/workflows/ci-cd-pipeline.yml`: GitHub Actions workflow that defines the CI/CD steps.
- **Security Check**: Scans the codebase and Docker image for vulnerabilities using **Trivy**.
- **Docker Build**: Builds a Docker image from the root `Dockerfile` after a successful security scan.

## Workflow Logic

1. **Trigger**: Activated on pushes and pull requests to `main`.
2. **Security Scan**: Runs **Trivy** to identify vulnerabilities.
3. **Docker Build**: Builds the Docker image if no vulnerabilities are found.

## Benefits

- **Security**: Ensures secure images through automated vulnerability scanning.
- **Automation**: Simplifies Docker image building.
- **Reliability**: Validates code and builds securely before deployment.


*Note: Part of the Machine Learning Assignment for the Municipality of Amsterdam's Computer Vision Team interview.*
