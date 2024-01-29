#' Scaler'
#' 
#' @description
#' Scale X and Y Coordinates given a maximum x and y value passed as parameters
#'  
#' @usage NULL
#' @param parameters A data.frame containing the following columns:
#' * `x` - The maximum x value
#' * `y` - The maximum y value
#' @returns a list containing two scaling utilities: 
#' * `scale <- parameters |> Scaler()`
#' * `x |> scale[['X']]()`
#' * `y |> scale[['Y']]()`
#' @export
Scaler <- \(parameters = NULL, source = NULL) {
  parameters <- if(parameters |> is.null()) list(x = 1, y = 1) else parameters

  axis <- Axis.Parameter.Service() |> Axis.Parameter.Processor()

  utilities <- list()
  utilities[['X']]           <- \(x) {
    (x / parameters[['x']]) * axis[['Get.X.Range']]()
  }
  utilities[['Y']]           <- \(y) {
    (y / parameters[['y']]) * axis[['Get.Y.Range']]()
  }
  utilities[['Coordinates']] <- \(coordinates) {
    data.frame(
      x = coordinates[['x']] |> utilities[['X']](),
      y = coordinates[['y']] |> utilities[['Y']]()
    )
  }
  return(utilities)
}