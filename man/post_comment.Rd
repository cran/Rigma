% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post_comment.R
\name{post_comment}
\alias{post_comment}
\title{POST comment}
\usage{
post_comment(file_key, message, comment_id = NULL, client_meta)
}
\arguments{
\item{file_key}{string. The key that a Figma file is referred by.}

\item{message}{string. The comment's textual content to post.}

\item{comment_id}{string. If there is one, the comment to respond to. You
cannot reply to a remark that is a reply to itself (a reply has a parent id),
thus this must be a root comment.}

\item{client_meta}{string. The position of where to place the comment.}
}
\value{
S3 object of class `rigma_post_comment`. Contains the parsed
JSON response with fields `id`, `file_key`, `status`, `i18n`, `parent_id`,
`user`, `created_at`, `resolved_at`, `message`, `reactions`, `client_meta`,
and `order_id`.
}
\description{
Posts a new comment on the file.
}
\examples{
\dontshow{if (Sys.getenv("FIGMA_ACCESS_TOKEN") != "") (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
\dontrun{
#navigate to  file and get key from url
file_key <- "sFHgQh9dL6369o5wrZHmdR"
get_comments(file_key)
}
\dontshow{\}) # examplesIf}
}
