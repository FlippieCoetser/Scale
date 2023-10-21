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
})