% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apple.R
\name{apple}
\alias{apple}
\title{Estimated salary model}
\usage{
apple(input)
}
\arguments{
\item{input}{data passed on as \code{newdata} to \code{\link{predict}}}
}
\description{
Simple model with a predictor \code{Open}
}
\examples{
mydata <- data.frame(
   Open = c(100, 200, 250)
)
apple(mydata)
}
