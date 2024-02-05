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
  it("then processors contains 'Get.Aspect.Ratio' processor.", {
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.Aspect.Ratio']] |> expect.exist()
  })
  it("then processors contains 'Get.X.Range' processor.", {
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.X.Range']] |> expect.exist()
  })
  it("then processors contains 'Get.Norm.X.Range' processor.", {
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.Norm.X.Range']] |> expect.exist()
  })
  it("then processors contains 'Get.Y.Range' processor.",{
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.Y.Range']] |> expect.exist()
  })
  it("then processors contains 'Get.Norm.Y.Range' processor.",{
    # Given
    service <- Device.Parameter.Service()

    # When
    processors <-  service |> Device.Parameter.Processor()

    # Then
    processors[['Get.Norm.Y.Range']] |> expect.exist()
  })
})

describe("When processor[['Get.Aspect.Ration']]()",{
  it("then service[['Get.Width']] / service[['Get.Height']] is returned",{
    # Given
    service <- Device.Parameter.Service()
    processors <-  service |> Device.Parameter.Processor()

    device.width <- service[['Get.Width']]()
    device.height <- service[['Get.Height']]()
    expect.aspect.ratio <- device.width / device.height
       
    # When
    retrieved.aspect.ratio <- processors[['Get.Aspect.Ratio']]()

    # Then
    retrieved.aspect.ratio |> expect.equal(expect.aspect.ratio)
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

describe("When processor[['Get.Norm.X.Range']]()",{
  it("then service[['Get.Width']] / service[['Get.Height']] is returned",{
    # Given
    service <- Device.Parameter.Service()
    processors <-  service |> Device.Parameter.Processor()

    device.width <- service[['Get.Width']]()
    device.height <- service[['Get.Height']]()
    expect.norm.x.range <- device.width / device.height
       
    # When
    retrieved.norm.x.range <- processors[['Get.Norm.X.Range']]()

    # Then
    retrieved.norm.x.range |> expect.equal(expect.norm.x.range)
  })
})

describe("When processor[['Get.Y.Range']]()",{
  it("then service[['Get.Height']] is returned",{
    # Given
    service <- Device.Parameter.Service()
    processors <-  service |> Device.Parameter.Processor()

    device.height <- service[['Get.Height']]()
    expect.y.range <- device.height
       
    # When
    retrieved.y.range <- processors[['Get.Y.Range']]()

    # Then
    retrieved.y.range |> expect.equal(expect.y.range)
  })
})

describe("When processor[['Get.Norm.Y.Range']]()",{
  it("then service[['Get.Height']] / service[['Get.Height']] is returned",{
    # Given
    service <- Device.Parameter.Service()
    processors <-  service |> Device.Parameter.Processor()

    device.height <- service[['Get.Height']]()
    expect.norm.y.range <- device.height / device.height
       
    # When
    retrieved.norm.y.range <- processors[['Get.Norm.Y.Range']]()

    # Then
    retrieved.norm.y.range |> expect.equal(expect.norm.y.range)
  })
})