describe('Axis.Parameter.Processor',{
  it('exist',{
    Axis.Parameter.Processor |> expect.exist()
  })
})

describe("When processors <- service |> Axis.Parameter.Processor()",{
  it("then processors is a list",{
    # When
    processors <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    # Then
    processors |> expect.list()
  })
  it("then processors contains 'Get.X.Range' processor",{
    # When
    processors <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    # Then
    processors[['Get.X.Range']] |> expect.exist()
  })
})

describe("When process[['Get.X.Range']]()",{
  it("then service[['Get.X.End']]() - service[['Get.X.Start']]() is returned",{
    # Given
    service <- Axis.Parameter.Service()
    process <- service |> Axis.Parameter.Processor()

    expected.x.range <- service[['Get.X.End']]() - service[['Get.X.Start']]()

    # When
    actual.x.range <- process[['Get.X.Range']]()

    # Then
    actual.x.range |> expect.equal(expected.x.range)
  })
})