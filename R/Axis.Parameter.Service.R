Axis.Parameter.Service <- \() {
  services <- list()
  services[['Get.X.Start']] <- \() {
    par('usr')[1:2][[1]]
  }
  services[['Get.X.End']]   <- \() { 
    par('usr')[1:2][[2]]
  }
  services[['Get.Y.Start']] <- \() {
  }
  return(services)
}