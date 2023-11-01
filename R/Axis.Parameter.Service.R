#' @importFrom graphics par
Axis.Parameter.Service <- \() {
  services <- list()
  services[['Get.X.Start']] <- \() {
    par('usr')[1:2][[1]]
  }
  services[['Get.X.End']]   <- \() { 
    par('usr')[1:2][[2]]
  }
  services[['Get.Y.Start']] <- \() {
    par('usr')[3:4][[1]]
  }
  services[['Get.Y.End']]   <- \() {
    par('usr')[3:4][[2]]
  }
  return(services)
}