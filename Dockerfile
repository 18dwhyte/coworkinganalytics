
FROM python:3.9-slim


#WORKDIR /app


#ENV DB_USERNAME=postgres \
 #   DB_NAME="coworking-analytics" \
  #  PYTHONUNBUFFERED=1

#RUN apt-get update -y && \
   # apt-get install -y --no-install-recommends \
  #  build-essential \
   # && rm -rf /var/lib/apt/lists/*


#COPY . /app

#RUN pip install --no-cache-dir -r requirements.txt

#EXPOSE 5153

#ENV NAME coworking-analytics

#CMD ["python", "analytics/app.py"]


WORKDIR /app

# Copy the rest of the application code to the working directory
COPY  /analytics/ /app

# Python dependencies
RUN pip install -r /app/requirements.txt

# Expose port 5153
EXPOSE 5153

# Environment variables
ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

# Command to run the application
CMD python app.py