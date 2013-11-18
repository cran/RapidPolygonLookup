\name{RapidPolygonLookup-package}
\alias{RapidPolygonLookup-package}
\docType{package}
\title{Polygon lookup using kd trees}
\description{This package facilitates efficient polygon search using kd trees.
Coordinate level spatial data can be aggregated to higher geographical
identities like census blocks, ZIP codes or police district boundaries.
This process requires mapping each point in the given data set to a
particular identity of the desired geographical hierarchy. Unless efficient
data structures are used, this can be a daunting task. The operation
point.in.polygon() from the package sp is computationally expensive.
Here, we exploit kd-trees as efficient nearest neighbor search algorithm
to dramatically reduce the effective number of polygons being searched.}
\details{
\tabular{ll}{Package: \tab RapidPolygonLookup\cr
Type: \tab Package\cr
Title: \tab Polygon lookup using kd trees\cr
Version: \tab 0.1\cr
Date: \tab 2013-11-18\cr
Depends: \tab 
R(>= 2.10.0),
sp,
RANN,
PBSmapping,
RgoogleMaps\cr
Author: \tab "Markus Loecher, Berlin School of Economics and Law (BSEL)"
<markus.loecher@gmail.com>,
Madhav Kumar <madhavkumar2005@gmail.com>\cr
Maintainer: \tab "Markus Loecher" <markus.loecher@gmail.com>\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr}
}
\author{Markus Loecher <markus.loecher@gmail.com> and Madhav Kumar <madhavkumar2005@gmail.com>}

\keyword{ package }


