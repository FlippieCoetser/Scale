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
  it("then services contains 'Get.X.Start'",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services[['Get.X.Start']] |> expect.exist()
  })
  it("then services contains 'Get.X.End'",{
    # When
    services <- Axis.Parameter.Service()

    # Then
    services[['Get.X.End']] |> expect.exist()
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