Axis.Parameter.Processor <- \(service) {
  processors <- list()
  processors[['Get.Aspect.Ratio']] <- \() {
  }
  processors[['Get.X.Range']] <- \() {
    service[['Get.X.End']]() - service[['Get.X.Start']]()
  }
  processors[['Get.Y.Range']] <- \() {
    service[['Get.Y.End']]() - service[['Get.Y.Start']]()
  }
  return(processors)
}