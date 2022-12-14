% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_bslib_palette.R
\name{extract_bslib_palette}
\alias{extract_bslib_palette}
\title{Extract bslib palette}
\usage{
extract_bslib_palette(design_tibble, version = 5)
}
\arguments{
\item{design_tibble}{A design_tibble returned bu the `add_color()` function}

\item{version}{Bootstrap version to use for extracting color variables}
}
\value{
List with colors used in high level variables of `bs_theme()`.
}
\description{
Extract bslib palette
}
\details{
This function filters for bslib high level color variables published
as styles of a Figma file and/or team. The color should be extracted and
added as a variable to the retrieved data.
}
\examples{
\dontrun{
file_key <- "sFHgQh9dL6369o5wrZHmdR"
file_key \%>\%
  get_file_styles() \%>\%
  as_design_tibble() \%>\%
  add_color() \%>\%
  extract_bslib_palette()
}

}
