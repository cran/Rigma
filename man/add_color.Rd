% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_color.R
\name{add_color}
\alias{add_color}
\title{Add color to design table data}
\usage{
add_color(design_tibble, hex = TRUE)
}
\arguments{
\item{design_tibble}{Tabular data to be augmented with color colomn.}

\item{hex}{logical. If `TRUE` hex data are added to `color` column else
nested data for `RGBA` channels.}
}
\value{
Adds color column to `design_tibble` data
}
\description{
Extracts color for design data collected from the Figma API.
Can convert to hex. Infered color data are added in a new column named
as `color`.
}
\examples{
\dontrun{
file_key <- "sFHgQh9dL6369o5wrZHmdR"
resp <- get_file_styles(file_key) \%>\%
  as_design_tibble() \%>\%
  add_color()
}

}
