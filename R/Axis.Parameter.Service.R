Axis.Parameter.Service <- \() {
  services <- list()
  services[['Get.X.Start']] <- \() {
    par('usr')[1:2][[1]]
  }
  return(services)
}