#' Estimated salary model
#'
#' Simple model with a predictor \code{Open}
#'
#' @export
#' @import Quandl
#' @importFrom stats predict.lm
#' @importFrom utils read.csv
#' @param input data passed on as \code{newdata} to \code{\link{predict}}
#' @examples
#' mydata <- data.frame(
#'    Open = c(100, 200, 250)
#' )
#' apple(mydata)

apple <- function(input){
  #input can either be csv file or data
  newdata <- if(is.character(input) && file.exists(input)){
    read.csv(input)
  } else {
    as.data.frame(input)
  }
  stopifnot("Open" %in% names(newdata))

  newdata$Open <- as.numeric(newdata$Open)

  #tv_model is included with the package
  newdata$apple <- as.vector(predict.lm(apple_model, newdata = newdata))
  return(newdata)
}
