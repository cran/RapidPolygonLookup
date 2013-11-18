\name{AddRanges}
\alias{AddRanges}
\title{Add xlim and ylim for each polygon}
\description{This function computes the bounding box for each polygon and adds this information
to the list. The bounding boxes can be used in various applications.
Our main motivation is for the massive PointsInPolygon search to exclude those 
polygons as candidates whose bounding box does not contain the current point.}
\usage{AddRanges(poly.list)}
\arguments{
  \item{poly.list}{polygon list with three elements: data, polys, and poly.centers}
}

\value{Returns augmented polygon list with additional element -- "ranges" }

\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}



\examples{

data(sf.polys, envir = environment())
sf.polys <- AddRanges(sf.polys)
str(sf.polys$ranges)

}
