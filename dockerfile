# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt and Jupyter Notebook to the container
COPY requirements.txt .
COPY final_milestone.ipynb .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Run Jupyter Notebook when the container is started
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
