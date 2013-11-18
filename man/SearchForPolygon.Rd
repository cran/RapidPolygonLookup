\name{SearchForPolygon}
\alias{SearchForPolygon}
\title{Use kd-trees to search the nearest neighbour polygons for a given set of points}
\description{This function uses the nn2() function from the RANN package to come up
with a shorter list of candidates on which point.in.polygon() from the 
sp package can be applied.}
\usage{SearchForPolygon(poly.list, XY, k, poly.id, poly.id.colname, 
    verbose = 0)}
\arguments{
  \item{poly.list}{polygon list with 3-4 elements: poly.centers, data, polys and possibly ranges}
  \item{XY}{data frame containing X-Y columns to assign polygons to}
  \item{k}{maximum number of nearest neighbours to compute. The default value is set to 10.}
  \item{poly.id}{column name in 'poly.list$data' containing the polygon identifier}
  \item{poly.id.colname}{desired column name in the output data frame containing the polygon identifier}
  \item{verbose}{level of verbosity}
}

\value{Returns data frame with identified polygon and nearest neighbour rank}

\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}



\examples{
data(sf.crime.2012, envir = environment())
data(sf.polys, envir = environment())
XY.polys <- SearchForPolygon(poly.list= sf.polys, XY= sf.crime.2012[1:1000,], k= 10,
                             poly.id= "fips", poly.id.colname= "census.block",
                             verbose= TRUE)

}
