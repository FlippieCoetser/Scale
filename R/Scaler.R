Scaler <- \(parameters) {
  axis <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

  utilities <- list()
  utilities[['X']] <- \(x) {
    (x / parameters[['x']]) * axis[['Get.X.Range']]()
  }
  utilities[['Y']] <- \(y) {
    (y / parameters[['y']]) * axis[['Get.Y.Range']]()
  }
  return(utilities)
}