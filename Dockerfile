# Use the official Golang image as the base image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o main cmd/main.go

# Expose the port that your application listens on
EXPOSE 80

# Define the command to run your application
CMD ["./main"]
