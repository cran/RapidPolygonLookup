\name{RapidPolygonLookup}
\alias{RapidPolygonLookup}
\title{Efficient spatial polygon search using kd-trees.}
\description{Given spatial partitions such as census blocks, ZIP codes or police district boundaries, we are
frequently faced with the need to spatially aggregate data. 
Unless efficient data structures are used, this can be a daunting task. 
The operation point.in.polygon() from the package sp is computationally expensive.
Here, we exploit kd-trees as efficient nearest neighbor search algorithm 
to dramatically reduce the effective number of polygons being searched.
Points that are left unmapped are put through a linear search to find the
associated polygon.}
\usage{RapidPolygonLookup(XY, polygons, poly.list = NULL, k = 10, N = nrow(XY), 
    poly.id = "fips", poly.id.colname = "census.block", keep.data = TRUE, 
    verbose = 0)}
\arguments{
  \item{XY}{data frame containing X-Y or (lon-lat, long-lat, longitude-latitude) columns}
  \item{polygons}{polygons to crop and add poly centres}
  \item{poly.list}{polygon list with three elements: data, polys, and poly.centers as output from function CropSpatialPolygonsDataFrame()}
  \item{k}{maximum number of near neighbours to compute. The default value is set to 10}
  \item{N}{number of rows of XY to search}
  \item{poly.id}{column name in 'poly.list$data' containing the polygon identifier}
  \item{poly.id.colname}{desired column name in the output data frame containing the polygon identifier}
  \item{keep.data}{retain polygon list and centers for future referece}
  \item{verbose}{level of verbosity}
}

\value{The original points augmented with polygon ID are returned along with the poly centers and other call information}

\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}



\examples{
data(sf.crime.2012, envir = environment())
data(sf.polys, envir = environment())
cat(nrow(sf.crime.2012), "rows in SF crime \n")

XY.kdtree <- RapidPolygonLookup(sf.crime.2012[,c("X","Y")], poly.list= sf.polys, 
                                  k= 10, N= 1000, 
                                  poly.id= "fips", poly.id.colname= "census.block", 
                                  keep.data= TRUE, verbose= TRUE)

XY.kdtree.DF <- XY.kdtree$XY
table(XY.kdtree.DF$rank, useNA= "always")
hist(XY.kdtree.DF$rank, xlab = "rank of neighbor")

}
