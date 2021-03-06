% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{catchments}
\alias{catchments}
\title{Example catchment boundary polygons.}
\format{An object of class \code{SpatialPolygonsDataFrame} with 2 rows and 1 columns.}
\usage{
catchments
}
\description{
Two example catchment boundaries as a SpatialPolygonsDataFrame. The catchments are Creswick Creek (ID 407214, Vic., Australia, see http://www.bom.gov.au/water/hrs/#id=407214) and
Bet Bet Creek (ID 407220, Vic., Australia, see http://www.bom.gov.au/water/hrs/#id=407220). The catchments can be used to extract catchment average climate data usng \code{extractCatchmentData}
}
\examples{
# Load example cacthment boundaries.
data("catchments")

}
\seealso{
\code{\link{extractCatchmentData}} for extracting catchment average climate data.
}
\keyword{datasets}
