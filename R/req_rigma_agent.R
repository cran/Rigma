#' Add metadata to Rigma request
#'
#' @description Extra metadata attached to httr2 request object before
#' performing the request.
#'
#' @param req httr2_request object
#'
#' @param user_agent string with user agent
#'
#' @importFrom httr2 req_headers req_user_agent req_retry resp_status
#'
#' @importFrom checkmate assert_class assert_string
#'
#' @return httr2_request object with Figma token heater, user agent and retry
#' specifications.
#'
req_rigma_agent <- function(
    req,
    user_agent = "Rigma https://github.com/AleKoure/Rigma"
) {
  assert_class(req, "httr2_request")
  figma_token <- Sys.getenv("FIGMA_ACCESS_TOKEN")
  assert_string(figma_token, min.chars = 1)

  req %>%
    req_headers(`X-Figma-Token` = figma_token) %>%
    req_user_agent(user_agent) %>%
    req_retry(
      is_transient = ~ resp_status(.x) %in% c(429, 500),
      backoff = ~ 20,
      max_tries = 3
    )
}
