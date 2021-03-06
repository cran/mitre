% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cti.R
\name{parseAttck.Techniques}
\alias{parseAttck.Techniques}
\title{Read MITRE CTI Repository browsing domain directories to extract data from attack-pattern files,
map variables from STIX to ATT&CK model and return tidy data.frame with Technique variables.}
\usage{
parseAttck.Techniques(verbose = TRUE)
}
\arguments{
\item{verbose}{default is FALSE}
}
\value{
data.frame
}
\description{
Read MITRE CTI Repository browsing domain directories to extract data from attack-pattern files,
map variables from STIX to ATT&CK model and return tidy data.frame with Technique variables.
}
\examples{
\dontrun{
df.techniques <- parseAttck.Techniques()
}
}
