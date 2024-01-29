Device.Parameter.Service <-  \() {
  services <- list()
  services[['Get.Width']] <- \(unit = 'px') {
      dev.size(unit)[1] 
  }
  services[['Get.Height']] <- \(unit = 'px') {
      dev.size(unit)[2] 
  }
  services
}