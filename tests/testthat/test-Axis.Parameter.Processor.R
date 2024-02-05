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
  it("then processors contains 'Get.Aspect.Ratio' processor",{
    # When
    processors <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    # Then
    processors[['Get.Aspect.Ratio']] |> expect.exist()
  })
  it("then processors contains 'Get.X.Range' processor",{
    # When
    processors <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    # Then
    processors[['Get.X.Range']] |> expect.exist()
  })
  it("then processors contains 'Get.Y.Range' processor",{
    # When
    processors <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

    # Then
    processors[['Get.Y.Range']] |> expect.exist()
  })
})

describe("When processor[['Get.Aspect.Ratio']]()",{
  it("then service[['Get.Width']]() / service[['Get.Height']]() is returned",{
    # Given
    service <- Axis.Parameter.Service()
    processor <- service |> Axis.Parameter.Processor()

    expected.aspect.ratio <- processor[['Get.X.Range']]() / processor[['Get.Y.Range']]()

    # When
    actual.aspect.ratio <- processor[['Get.Aspect.Ratio']]()

    # Then
    actual.aspect.ratio |> expect.equal(expected.aspect.ratio)
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

describe("When process[['Get.Y.Range']]()",{
  it("then service[['Get.Y.End']]() - service[['Get.Y.Start']]() is returned",{
    # Given
    service <- Axis.Parameter.Service()
    process <- service |> Axis.Parameter.Processor()

    expected.y.range <- service[['Get.Y.End']]() - service[['Get.Y.Start']]()

    # When
    actual.y.range <- process[['Get.Y.Range']]()

    # Then
    actual.y.range |> expect.equal(expected.y.range)
  })
})