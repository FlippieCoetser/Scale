describe('Axis.Parameter.Service',{
  it('exist',{
    Axis.Parameter.Service |> expect.exist()
  })
})

describe("When services <- Axis.Parameter.Service()",{
  it("then services is a list",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services |> expect.list()
  })
  it("then services contains 'Get.X.Start' service.",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services[['Get.X.Start']] |> expect.exist()
  })
  it("then services contains 'Get.X.End' service.",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services[['Get.X.End']] |> expect.exist()
  })
  it("then services contains 'Get.Y.Start' service.",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services[['Get.Y.Start']] |> expect.exist()
  })
  it("then services contains 'Get.Y.End' service.",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services[['Get.Y.End']] |> expect.exist()
  })
})

describe("When service[['Get.X.Start']]()",{
  it("then the x start position of the plot area is returned",{
    # Given
    service <- Axis.Parameter.Service()

    expected.x.start <- par('usr')[1:2][[1]]

    # When
    actual.x.start <- service[['Get.X.Start']]()

    # Then
    actual.x.start |> expect.equal(expected.x.start)
  })
})

describe("When service[['Get.X.End']]()",{
  it("then the x end position of the plot area is returned",{
    # Given
    service <- Axis.Parameter.Service()

    expected.x.end <- par('usr')[1:2][[2]]

    # When
    actual.x.end <- service[['Get.X.End']]()

    # Then
    actual.x.end |> expect.equal(expected.x.end)
  })
})

describe("When service[['Get.Y.Start']]()",{
  it("then the x start position of the plot area is returned",{
    # Given
    service <- Axis.Parameter.Service()

    expected.y.start <- par('usr')[3:4][[1]]

    # When
    actual.y.start <- service[['Get.Y.Start']]()

    # Then
    actual.y.start |> expect.equal(expected.y.start)
  })
})

describe("When service[['Get.Y.End']]()",{
  it("then the y end position of the plot area is returned",{
    # Given
    service <- Axis.Parameter.Service()

    expected.y.end <- par('usr')[3:4][[2]]

    # When
    actual.y.end <- service[['Get.Y.End']]()

    # Then
    actual.y.end |> expect.equal(expected.y.end)
  })
})