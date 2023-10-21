describe('Scaler',{
  it('exist',{
    Scaler |> expect.exist()
  })
})

describe("When utilities <- parameters |> Scaler()",{
  it("then utilities is a list",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities |> expect.list()
  })
  it("then utilities contains 'X' utility",{
    # Given
    parameters <- data.frame(
      x = 3000,
      y = 2500
    )

    # When
    utilities <- parameters |> Scaler()

    # Then
    utilities[['X']] |> expect.exist()
  })
})