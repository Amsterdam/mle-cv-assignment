from pathlib import Path
import torch

# Paths for input and output
input_dir = Path("/usr/src/app/input")
output_dir = Path("/usr/src/app/output")
output_dir.mkdir(exist_ok=True)

# Load the pre-trained YOLO model
model = torch.hub.load('ultralytics/yolov5', 'yolov5s')

# Run inference on all images in the input directory
for image_path in input_dir.glob("*.jpg"):
    # Run YOLO inference
    results = model(image_path)

    # Save results with bounding boxes to the output directory
    results.save(output_dir)
    print(f"Processed {image_path.name} and saved results to {output_dir}")
