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