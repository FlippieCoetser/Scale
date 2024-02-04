Device.Parameter.Processor <- \(service) {
  processors <-  list()
  processors[['Get.X.Range']] <- \() {
    service[['Get.Width']]()
  }
  processors[['Get.Norm.X.Range']] <- \() {
  }
  processors[['Get.Y.Range']] <- \() {
    service[['Get.Height']]()
  }
  processors
}