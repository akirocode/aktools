nice_apostrophe <- function() {"`"}

#' nice-numbers
#'
#' @param x
#' @param sep
#'
#' @return
#' @import stringr
#' @export
#'
#' @examples
thous_sep <- function(x, sep = "'"){
  comma_x <- scales::comma(x)
  str_replace_all(comma_x, ",", sep)
}

#' nice-numbers
#'
#' @param x
#' @param thous_sep
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
euro_formatter <- function(x, thous_sep = T, ...) {
  if(thous_sep) {x <- thous_sep(x, ...)}
  paste("€", x)
}

