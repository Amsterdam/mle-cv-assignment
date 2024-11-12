# Solution Design Report

## Overview

This solution enables on-edge object detection to identify objects like containers, garbage, and mobile toilets in images from a vehicle. Its goal is to detect objects in illegal positions and send notifications via a REST API. The architecture prioritizes privacy with data minimalization and anonymization, combining on-edge and cloud-based processing for secure and efficient handling.

## Solution Architecture

The architecture has four stages: **Data Capture**, **On-Edge Processing**, **Cloud Processing and Storage**, and **Notification & API Communication**.

### 1. Data Capture (Edge Device)
- **Input**: Vehicle-mounted cameras capture images.
- **Output**: Images sent to the edge device for processing.
- **Privacy**: Immediate on-edge processing minimizes unnecessary data storage.

### 2. On-Edge Processing (Edge Device)
- **Image Preprocessing**: Enhances image quality for model input.
- **YOLO Object Detection**: A pre-trained YOLO model detects target objects.
- **Anonymization**: Blurs sensitive data like faces and plates.
- **Minimalization**: Retains only essential metadata (object type, location) and anonymized images.
- **Data Transmission**: Securely sends anonymized data and metadata to the cloud.

### 3. Cloud Processing and Storage (Cloud Server)
- **Database Check**: Verifies object legality by cross-referencing with a database.
- **Data Storage**: Stores processed images and metadata securely for audit and analysis.

### 4. Notification & API Communication
- **Illegal Position Check**: Triggers a REST API call if an object is in an illegal position.
- **Notification**: Sends alerts to the relevant department.

## Pros and Cons of the Solution

### Pros
- **Privacy Compliance**: On-edge anonymization aligns with privacy regulations.
- **Data Minimalization**: Only essential data is sent, conserving bandwidth and cloud storage.
- **Low Latency**: On-edge processing reduces cloud transmission, improving response times.
- **Modularity**: Components are reusable and adaptable.
- **Security**: Secure communication channels protect data integrity.

### Cons
- **Edge Device Constraints**: Processing may be limited by edge hardware capabilities.
- **Network Dependency**: Requires consistent network connectivity for cloud transmission.
- **Cloud Maintenance**: Needs regular updates for regulatory compliance and patches.

## Conclusion

This design balances privacy, efficiency, and security for on-edge object detection within the Municipality of Amsterdam. By prioritizing on-edge processing, minimizing cloud transmissions, and securing data, the architecture meets both privacy standards and functional requirements.

---

*Note: Part of the Machine Learning Assignment for the Municipality of Amsterdam's Computer Vision Team interview.*