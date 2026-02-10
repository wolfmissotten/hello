#' Says hello
#'
#' @param name char
#' @return char
#' @export
#' @examples
#' hello('wolf')
hello <- function(name = 'world') {
  assertthat::assert_that(is.character(name), msg = "Name must be a character.")
  paste('Hello', name)
}


