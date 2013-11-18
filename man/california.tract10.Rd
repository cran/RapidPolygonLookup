\name{california.tract10}
\alias{california.tract10}
\docType{data}
\title{Census Tract spatial polygons for the state of California}
\description{Object of class SpatialPolygonsDataFrame containing spatial polygons of Census tracts in California. The object has been originally created from the 2010 US Census tiger/line boundary files (http://www.census.gov/geo/www/tiger/) for Census Tracts. The polygons have been manually cropped to the area in and around San Francisco.}
\usage{data(california.tract10)}
\format{
  An object of class SpatialPolygonsDataFrame from the sp package
  \describe{
    \item{\code{data}}{data frame containing information for 457 variables (excluding ids) available from the summary file 1}
	\item{\code{polygons}}{polygons of Census Tracts}
	\item{\code{plotOrder}}{plotting order of polygons}
	\item{\code{bbox}}{bounding box of spatial polygons}
	\item{\code{proj4string}}{projection of polygons. All polygons are projected in CRS(" +proj=longlat +ellps=GRS80 +datum=NAD83 +no_defs +towgs84=0,0,0")}
  }
}

\details{For details on the summary variables present in the data frame please refer 

http://www.census.gov/prod/cen2000/doc/sf1.pdf 
}

\source{http://cran.r-project.org/web/packages/UScensus2010/index.html}

\references{Zack W. Almquist (2010). US Census Spatial and Demographic Data in R: The UScensus2000 Suite of Packages. Journal of Statistical Software, 37(6), 1-31. URL http://www.jstatsoft.org/v37/i06/
http://www.census.gov/prod/cen2000/doc/sf1.pdf
}

\examples{
data(california.tract10, envir = environment())
plot(california.tract10)
}
\keyword{datasets}
