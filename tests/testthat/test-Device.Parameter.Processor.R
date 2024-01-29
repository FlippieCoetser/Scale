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
})