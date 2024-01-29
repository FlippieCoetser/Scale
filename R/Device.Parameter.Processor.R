Device.Parameter.Processor <- \(service) {
  processors <-  list()
  processors[['Get.X.Range']] <- \() {
    service[['Get.Width']]()
  }
  processors[['Get.Y.Range']] <- \() {
  }
  processors
}