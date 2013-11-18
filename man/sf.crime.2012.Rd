\name{sf.crime.2012}
\alias{sf.crime.2012}
\docType{data}
\title{Sample data with lat/long information}
\description{2012 crime incident data from the city of San Francisco}
\usage{data(sf.crime.2012)}
\format{
  A data frame with 20,000 randomly selected observations with the following variables and their types:
  \describe{
	\item{\code{Date}}{character}
	\item{\code{X}}{numeric}
	\item{\code{Y}}{numeric}
	\item{\code{violent}}{Factor}
  }
}
\details{There are no more details required}

\source{https://data.sfgov.org/Public-Safety/SFPD-Reported-Incidents-2003-to-Present/dyj4-n68b}

\examples{
data(sf.crime.2012, envir = environment())
}
\keyword{datasets}
