% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_component.R
\name{get_component}
\alias{get_component}
\title{GET component}
\usage{
get_component(key)
}
\arguments{
\item{key}{string. The unique identifier of the component.}
}
\value{
S3 object of class `rigma_get_component`.
}
\description{
Get metadata on a component by key. To publish components join
a Figma team and subscribe for professional account.
}
\examples{
\dontrun{
component_key <- "my_key"
get_component(component_key)
}

}
