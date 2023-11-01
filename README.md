# Scale Package

This package is used to scale the image and intended to decouple the range of x and y coordinates by providing a frame size. For example if the maximum x and y coordinates is 1000mm, then the scaler can be used to scale any input x or y values with reference to this maximum value.

### Example:

1. Create new instance of `Scaler` using a `list` with maximum x and y coordinate values:

```r
scale <- list(x = 1000, y = 1000) |> Scaler::Scaler()
```

2. Define the input x and y values:

```r
coordinates <- data.frame(x = c(100, 200, 300), y = c(100, 200, 300))
```

3. Scale the input coordinates:

```r
scaled.coordinates <- coordinates |> scale[['Coordinates']]()
```

## Installation

At this time of writing this README, this package is not available on CRAN. However, it can be installed from GitHub or build and installed locally.

### Install from GitHub

1. Use devtools

```r
devtools::install_github("https://github.com/FlippieCoetser/Scale")
```

### Build and install locally

1. Clone the repository

```bash
git clone https://github.com/FlippieCoetser/Scale.git
```

2. Generate `.tar.gz` file

```r
devtools::build()
```

3. Install package from `.tar.gz` file

```r
install.packages("path_to_file/tar_gz_file", repos = NULL, type = "source")
```
