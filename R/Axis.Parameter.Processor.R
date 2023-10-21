Axis.Parameter.Processor <- \(service) {
  processors <- list()
  processors[['Get.X.Range']] <- \() {
    service[['Get.X.End']]() - service[['Get.X.Start']]()
  }
  return(processors)
}