\name{CropSpatialPolygonsDataFrame}
\alias{CropSpatialPolygonsDataFrame}
\title{Crop polygons to bounding box and adds polygon centers}
\description{This function serves three purposes:
(i)   changes the (complicated) data structure of a spatial polygon (from the sp package) to a format which is aligned with the (simpler) PBSmapping polygon format.
(ii)  clips/crops the polygons to a pre specified bounding box
(iii) computes and adds the polygon centers for each polygon }
\usage{CropSpatialPolygonsDataFrame(x, bb = NULL, verbose = 0)}
\arguments{
  \item{x}{object of class SpatialPolygonsDataFrame}
  \item{bb}{bounding box to crop the polygons}
  \item{verbose}{level of verbosity}
}

\value{New list with separate entries for data, polys, and poly centers}

\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}



\examples{
# San Francisco:
data(california.tract10, envir = environment())
sf.polys <- CropSpatialPolygonsDataFrame(x= california.tract10, 
                                       bb= data.frame(X=c(-122.5132, -122.37), 
                                                      Y= c(37.70760, 37.81849)))

}
