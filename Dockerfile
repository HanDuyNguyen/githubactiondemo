# 1. Use the official lightweight Python image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy only the dependencies list first (improves build caching)
COPY requirements.txt .

# 4. Install your Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your application code into the container
COPY . .

# 7. The command to run your app when the container starts
CMD ["python", "main.py"]
