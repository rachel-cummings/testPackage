#' Custom theme function
#' 
#' @export
#'
#' @examples
#' ggplot(mtcars, aes(x=mpg,y=wt)) + geom_point() + labs("Custom Theme Example") + my_theme()

my_theme <- function() {
  theme_dark() + 
  theme(
  panel.grid.major=element_line(color="#e63ad4"),
  plot.background=element_rect(fill="purple"),
  plot.title=element_text(color="blue")
  )
 
}