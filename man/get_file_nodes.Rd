% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_file_nodes.R
\name{get_file_nodes}
\alias{get_file_nodes}
\title{GET file nodes}
\usage{
get_file_nodes(
  file_key,
  ids = NULL,
  version = NULL,
  depth = NULL,
  geometry = NULL,
  plugin_data = NULL
)
}
\arguments{
\item{file_key}{string. The key that a Figma file is referred by.}

\item{ids}{character. Vector with the document's node ids that are important
to you. If supplied, only the nodes listed, their children,
and everything between the root node and the listed nodes will be returned
as part of the document.}

\item{version}{string. A certain version ID to obtain. By omitting this,
you'll obtain the file's most recent version.}

\item{depth}{integer. A positive number indicating the depth of the
traversal across the document tree. For instance, changing this to 2
returns both Pages and all top level objects on each page instead of just
returning Pages. All nodes are returned if this argument is not set.}

\item{geometry}{string. To export vector data, set equal to "paths".}

\item{plugin_data}{string. A list of plugin IDs separated by commas or the
word "shared." The result's 'pluginData' and 'sharedPluginData' attributes
will contain any data existing in the document created by those plugins.}
}
\value{
S3 object of the type `rigma_get_file_nodes`.

The supplied file's metadata includes the `name`, `lastModified`,
`thumbnailUrl`, `editorType`, and `version` attributes.

The file link share permission level is described in the `linkAccess` field.
A shared link may have one of five different permissions: "inherit," "view,"
"edit," "org view," and "org edit." The default permission for files
produced in a team project is "inherit," and those files will take on the
project's rights by default. "org view" and "org edit" only allow org users
to access the link.

Each node has the ability to inherit properties from applicable styles. A
mapping from style IDs to style metadata is contained in the `styles` key.

It's important to note that the nodes field is a list that can include null
values. This can be because the provided file does not contain a node with
the specified id.
}
\description{
Returns a JSON object containing the nodes referenced by
`:ids`. The Figma file referred to by `:key` is where the nodes are located.
The node Id and file key can be parsed from any Figma node url:
https://www.figma.com/file/:key/:title?node-id=:id.
}
\examples{
\dontshow{if (Sys.getenv("FIGMA_ACCESS_TOKEN") != "") (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
\dontrun{
#navigate to  file and get key from url
file_key <- "sFHgQh9dL6369o5wrZHmdR"
get_file_nodes(file_key, ids = "0:0")
}
\dontshow{\}) # examplesIf}
}
