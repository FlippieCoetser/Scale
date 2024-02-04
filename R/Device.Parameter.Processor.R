Device.Parameter.Processor <- \(service) {
  processors <-  list()
  processors[['Get.X.Range']] <- \() {
    service[['Get.Width']]()
  }
  processors[['Get.Norm.X.Range']] <- \() {
    service[['Get.Width']]() / service[['Get.Height']]()
  }
  processors[['Get.Y.Range']] <- \() {
    service[['Get.Height']]()
  }
  processors[['Get.Norm.Y.Range']] <- \() {
    service[['Get.Height']]() / service[['Get.Height']]()
  }
  processors
}