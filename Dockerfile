# 1. Base Python image
FROM python:3.11-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy dependencies file
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy application code
COPY app.py .

# 6. Expose port
EXPOSE 8000

# 7. Run the app
CMD ["python", "app.py"]
