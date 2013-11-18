\name{sf.polys}
\alias{sf.polys}
\docType{data}
\title{Spatial polygons of San Francisco}
\description{Cropped spatial polygons from California Census tracts bounded between San Francisco limits}
\usage{data(sf.polys)}
\format{
  A list object with the following elements:
  \describe{
    \item{\code{data}}{data frame retained from California tracts object of class SpatialPolygonsDataFrame}
	\item{\code{polys}}{PolySet object from PBSmapping containing the spatial polygons}
	\item{\code{poly.centers}}{PolyData object from PBSmapping containing the polygon centroids}
  }
}
\details{This object is created from a function of CropSpatialPolygonsDataFrame() from the RapidPolygonLookup package}
\source{http://cran.r-project.org/web/packages/UScensus2010/index.html}
\references{Zack W. Almquist (2010). US Census Spatial and Demographic Data in R: The UScensus2000 Suite of Packages. Journal of Statistical Software, 37(6), 1-31. URL http://www.jstatsoft.org/v37/i06/}

\examples{
data(sf.polys, envir = environment())
plotPolys(sf.polys$polys)
}

\keyword{datasets}

