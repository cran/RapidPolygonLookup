\name{FindPolygonInRanges}
\alias{FindPolygonInRanges}
\title{Use range-search to map points to polygon.}
\description{This function searches the lat-long ranges of polygons to come up
with a shorter list of candidates on which point.in.polygon() from the
sp package can be applied.}
\usage{FindPolygonInRanges(poly.list, XY, poly.id = "fips", poly.id.colname = "census.block", 
    verbose = 0)}
\arguments{
  \item{poly.list}{polygon list with 3 or 4 elements: data, polys, poly.centers, and possibly ranges}
  \item{XY}{data frame containing X-Y columns}
  \item{poly.id}{column name in 'poly.list$data' containing the polygon identifier}
  \item{poly.id.colname}{desired column name in the output data frame containing the polygon identifier}
  \item{verbose}{level of verbosity}
}



\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}



\examples{

data(sf.crime.2012, envir = environment())
data(sf.polys, envir = environment())

sf.polys <- AddRanges(sf.polys)
XY <- FindPolygonInRanges(sf.polys, sf.crime.2012[1:1000,], verbose=0)

which(is.na(XY[,"census.block"]))
table(XY$rank)

}
