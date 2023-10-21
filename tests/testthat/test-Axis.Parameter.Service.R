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
})