describe('Scaler',{
  it('exist',{
    Scaler |> expect.exist()
  })
})

describe("When utilities <- parameters |> Scaler()",{
  it("then utilities is a list",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities |> expect.list()
  })
  it("then utilities contains 'X' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities[['X']] |> expect.exist()
  })
  it("then utilities contains 'Y' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities[['Y']] |> expect.exist()
  })
  it("then utilities contains 'Coordinates' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities[['Coordinates']] |> expect.exist()
  })
  it("then no exception is thrown is parameters is NULL",{
    # Given
    parameters <- NULL

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities |> expect.list()
  })
})

describe("When x |> scale[['X']]()",{
  it("then x is scaled using parameters and x range",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    axis <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    x.range <- axis[['Get.X.Range']]()

    x <- 2700

    expected.x <- (x / parameters[['x']]) * x.range

    scale <- parameters |> Scaler()

    # When
    actual.x <- x |> scale[['X']]()

    # Then
    actual.x |> expect.equal(expected.x)
  })
})

describe("When y |> scale[['Y']]()",{
  it("then y is scaled using parameters and y range",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    axis <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    y.range <- axis[['Get.Y.Range']]()

    y <- 2000

    expected.y <- (y / parameters[['y']]) * y.range

    scale <- parameters |> Scaler()

    # When
    actual.y <- y |> scale[['Y']]()

    # Then
    actual.y |> expect.equal(expected.y)
  })
})

describe("When coordinates |> scale[['Coordinates']]()",{
  it("then coordinates is scaled using parameters and axis ranges",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    axis <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    x.range <- axis[['Get.X.Range']]()
    y.range <- axis[['Get.Y.Range']]()


    x <- c(0,2000,2000,0,0)
    y <- c(0,0,1000,1000,0)

    coordinates <- data.frame(
      x = x,
      y = y
    )

    expected.x <- (x / parameters[['x']]) * x.range
    expected.y <- (y / parameters[['y']]) * y.range

    expected.coordinates <- data.frame(
      x = expected.x,
      y = expected.y
    )

    scale <- parameters |> Scaler()

    # When
    actual.coordinates <- coordinates |> scale[['Coordinates']]()

    # Then
    actual.coordinates |> expect.equal(expected.coordinates)
  })
})

describe("When utilities <- parameters |> Scaler(source = 'device')",{
  it("then utilities is a list",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler(source = 'device')

    # Then
    utilities |> expect.list()
  })
  it("then utilities contains 'X' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler(source = 'device')

    # Then
    utilities[['X']] |> expect.exist()
  })
  it("then utilities contains 'Y' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler(source = 'device')

    # Then
    utilities[['Y']] |> expect.exist()
  })
  it("then utilities contains 'Coordinates' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler(source = 'device')

    # Then
    utilities[['Coordinates']] |> expect.exist()
  })
  it("then no exception is thrown is parameters is NULL",{
    # Given
    parameters <- NULL

    # When
    utilities <- parameters |> Scaler(source = 'device')

    # Then
    utilities |> expect.list()
  })
})

describe("When source = device and x |> scale[['X']]()",{
  it("then x is scaled using parameters and x range",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    processor <- Device.Parameter.Service() |> Device.Parameter.Processor()

    x.range <- processor[['Get.X.Range']]()

    x <- 2700

    expected.x <- (x / parameters[['x']]) * x.range

    scale <- parameters |> Scaler(source = 'device')

    # When
    actual.x <- x |> scale[['X']]()

    # Then
    actual.x |> expect.equal(expected.x)
  })
})

describe("When source = device and y |> scale[['Y']]()",{
  it("then y is scaled using parameters and y range",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    processor <- Device.Parameter.Service() |> Device.Parameter.Processor()

    y.range <- processor[['Get.Y.Range']]()

    y <- 2000

    expected.y <- (y / parameters[['y']]) * y.range

    scale <- parameters |> Scaler(source = 'device')

    # When
    actual.y <- y |> scale[['Y']]()

    # Then
    actual.y |> expect.equal(expected.y)
  })
})

describe("When source = device and coordinates |> scale[['Coordinates']]()",{
  it("then coordinates is scaled using parameters and device ranges",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    processor <- Device.Parameter.Service() |> Device.Parameter.Processor()

    x.range <- processor[['Get.X.Range']]()
    y.range <- processor[['Get.Y.Range']]()


    x <- c(0,2000,2000,0,0)
    y <- c(0,0,1000,1000,0)

    coordinates <- data.frame(
      x = x,
      y = y
    )

    expected.x <- (x / parameters[['x']]) * x.range
    expected.y <- (y / parameters[['y']]) * y.range

    expected.coordinates <- data.frame(
      x = expected.x,
      y = expected.y
    )

    scale <- parameters |> Scaler(source = 'device')

    # When
    actual.coordinates <- coordinates |> scale[['Coordinates']]()

    # Then
    actual.coordinates |> expect.equal(expected.coordinates)
  })
})