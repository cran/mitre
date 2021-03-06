% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mitre.R
\name{getLatestDataSet}
\alias{getLatestDataSet}
\title{Download latest R data sets from Github previously parsed with this package.}
\usage{
getLatestDataSet(verbose = FALSE)
}
\arguments{
\item{verbose}{default is FALSE}
}
\value{
list of standards and network
}
\description{
Download latest R data sets from Github previously parsed with this package.
}
\examples{
\dontrun{
mitredata <- mitre::getLatestDataSet(TRUE)
}
}
