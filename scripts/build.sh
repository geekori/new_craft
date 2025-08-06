#!/bin/bash

# This script builds the project's command-line tool.

echo "Starting build process for pixel-craft..."

# Set the output binary name
BINARY_NAME="pixel-craft"

# Navigate to the main command directory
cd cmd/pixel-craft-cli/

# Build the Go program
go build -o ../../build/$BINARY_NAME .

if [ $? -eq 0 ]; then
    echo "Build successful!"
    echo "Binary available at: build/$BINARY_NAME"
else
    echo "Build failed."
    exit 1
fi

exit 0