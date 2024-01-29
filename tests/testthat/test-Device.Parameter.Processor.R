describe('Device.Parameter.Processor',{
  it('exist',{
    Device.Parameter.Processor |> expect.exist()
  })
})

describe("When processors <- service |> Device.Parameter.Processor()", {
  it("then processors is a list", {
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors |> expect.list()
  })
  it("then processors contains 'Get.X.Range' processor.", {
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.X.Range']] |> expect.exist()
  })
  it("then processors contains 'Get.Y.Range' processor.",{
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.Y.Range']] |> expect.exist()
  })
})

describe("When processor[['Get.X.Range']]()",{
  it("then service[['Get.Width']] is returned",{
    # Given
    service <- Device.Parameter.Service()
    processors <-  service |> Device.Parameter.Processor()

    device.width <- service[['Get.Width']]()
    expect.x.range <- device.width
       
    # When
    retrieved.x.range <- processors[['Get.X.Range']]()

    # Then
    retrieved.x.range |> expect.equal(expect.x.range)
  })
})