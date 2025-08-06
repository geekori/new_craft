# PixelCraft

[![Go Report Card](https://goreportcard.com/badge/github.com/user/pixel-craft)](https://goreportcard.com/report/github.com/user/pixel-craft)
[![Build Status](https://img.shields.io/travis/com/user/pixel-craft.svg?style=flat-square)](https://travis-ci.com/user/pixel-craft)
[![Coverage Status](https://img.shields.io/coveralls/github/user/pixel-craft/main.svg?style=flat-square)](https://coveralls.io/github/user/pixel-craft?branch=main)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

**PixelCraft** is a modern, high-performance Go library for image manipulation and processing. It provides a clean and expressive API to create, edit, and compose images, inspired by the simplicity of libraries like Intervention Image but reimagined for the Go ecosystem.

## Features

- **Fluent Interface**: Chain methods for clean and readable image processing pipelines.
- **Extensive Operations**: Supports resizing, cropping, rotating, watermarking, and more.
- **Powerful Filtering**: A rich set of image filters like grayscale, blur, sharpen, and sepia.
- **Format Support**: Encode and decode various image formats including JPEG, PNG, GIF, and BMP.
- **Framework Agnostic**: Usable in any Go project, from web services to command-line tools.
- **High Performance**: Built with performance in mind, leveraging Go's concurrency.

## Installation

To install PixelCraft, use `go get`:

```bash
go get -u [github.com/your-username/pixel-craft](https://github.com/your-username/pixel-craft)
```

## Usage

Here is a quick example of how to resize an image and apply a grayscale filter.

```go
package main

import (
    "log"
    "[github.com/your-username/pixel-craft/pkg/image](https://github.com/your-username/pixel-craft/pkg/image)"
)

func main() {
    img, err := image.Open("path/to/your/image.jpg")
    if err != nil {
        log.Fatalf("Failed to open image: %v", err)
    }

    // Resize the image to a width of 800px, maintaining aspect ratio.
    // Then, apply a grayscale filter and save the result.
    err = img.Resize(800, 0).
        Filter("grayscale").
        Save("path/to/your/output.jpg")

    if err != nil {
        log.Fatalf("Failed to process and save image: %v", err)
    }
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.