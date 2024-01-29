describe('Device.Parameter.Service',{
  it('exist',{
    Device.Parameter.Service |> expect.exist()
  })
})

describe("When services <- Device.Parameter.Service()",{
  it("then services is a list",{
    # When
    services <- Device.Parameter.Service()

    # Then
    services |> expect.list()
  })
  it("then services contains 'Get.Width' service",{
    # When
    services <- Device.Parameter.Service()

    # Then
    services[['Get.Width']] |> expect.exist()
  })
  it("then services contains 'Get.Height' service",{
    # When
    services <- Device.Parameter.Service()

    # Then
    services[['Get.Height']] |> expect.exist()
  })
})

describe("When service[['Get.Width']]()",{
  it("then the current device width in pixels is returned",{
    # Given
    services <- Device.Parameter.Service()

    current.width  <-  dev.size('px')[1]
    expected.width <- current.width

    # When
    width <- services[['Get.Width']]()

    # Then
    width |> expect.equal(expected.width)
  })
})

describe("When service[['Get.Width']]('in')",{
  it("then the current device width in in. is returned",{
    # Given
    services <- Device.Parameter.Service()

    current.width  <-  dev.size()[1]
    expected.width <- current.width

    # When
    width <- services[['Get.Width']]('in')

    # Then
    width |> expect.equal(expected.width)
  })
})

describe("When service[['Get.Height']]()",{
  it("then the current device height in pixels is returned",{
    # Given
    services <- Device.Parameter.Service()

    current.height  <-  dev.size('px')[2]
    expected.height <- current.height

    # When
    height <- services[['Get.Height']]()

    # Then
    height |> expect.equal(expected.height)
  })
})

describe("When service[['Get.Height']]('in')",{
  it("then the current device height in in. is returned",{
    # Given
    services <- Device.Parameter.Service()

    current.height  <-  dev.size()[2]
    expected.height <- current.height

    # When
    height <- services[['Get.Height']]('in')

    # Then
    height |> expect.equal(expected.height)
  })
})