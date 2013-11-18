\name{DiagnoseFailure}
\alias{DiagnoseFailure}
\title{Visualize points that could not be mapped using RapidPolygonLookup()}
\description{This functions plots the points that could not be mapped using RapidPolygonLookup()
The points are overlayed on the polygons to contextualize their
geographical location and understand the reason behind their exclusion.}
\usage{DiagnoseFailure(XY.polys, poly.list = NULL)}
\arguments{
  \item{XY.polys}{output from function RapidPolygonLookup()}
  \item{poly.list}{polygon list with 3 or 4 elements: data, polys, poly.centers, and possibly ranges. Needs to be supplied if RapidPolygonLookup() was run with keep.data= FALSE}
}



\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}



\examples{
data(sf.crime.2012, envir = environment())
data(sf.polys, envir = environment())
cat(nrow(sf.crime.2012), "rows in SF crime \n")

XY.kdtree <- RapidPolygonLookup(sf.crime.2012[,c("X","Y")], poly.list= sf.polys, 
                                k= 10, N= 1000, 
                                poly.id= "fips", poly.id.colname= "census.block", 
                                keep.data= TRUE, verbose= TRUE)
DiagnoseFailure(XY.kdtree)
}
