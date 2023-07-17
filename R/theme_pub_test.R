library(devtools)
use_package("ggplot2")
use_package("grid")

#' Title
#'
#' @param base_size
#' @param base_family
#'
#' @return returns a standard theme for express project publications based on theme_bw of ggplot2
#' @export
#'
#' @examples
theme_pub_test <- function(base_size = 11, base_family = "sans"){
  ggplot2::theme_bw(base_size = base_size, base_family =  base_family) %+replace%
    theme(legend.key = element_rect(fill = "transparent"),
          legend.background = element_rect(fill = "transparent"),
          plot.background = element_blank(),
          legend.position = "top",
          legend.justification = "center",
          legend.title = element_blank(), # switch off the legend title
          # Legendenelemente
          legend.key.size = unit(1, 'cm'), #change legend key size
          #legend.key.height = unit(2, 'cm'), #change legend key height
          #legend.key.width = unit(2, 'cm'), #change legend key width
          #legend.title = element_text(size=14), #change legend title font size
          #legend.text = element_text(size = rel(1)), #change legend text font size

          strip.background = element_blank(),
          strip.text = element_text(colour = "black"),
          strip.placement = "outside",
          #panel.spacing.y = unit(1.5,"lines"),
          panel.spacing.x = NULL,                             # NULL - kein Rand um die Einzelbannels bei facetting
          panel.spacing.y = NULL,
          #panel.grid = element_blank(),                       # grid raus
          #plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "lines"),
          plot.margin = unit(c(0.1, 0.1, 0.1, 0.1), "lines"),
          legend.box = "horizontal",
          legend.box.background = element_rect(fill = "transparent", colour = "transparent"),
          legend.box.margin = margin(0.25, 0.25, 0.25, 0.25, "lines"),
          legend.margin = margin(0.25, 0.25, 0.25, 0.25, "lines"),
          legend.box.just = "left",
          axis.text = element_text(size = rel(1), colour = "black")
          #axis.text = element_text(size = rel(0.8), colour = "black"),
          #axis.ticks = element_line(colour = "black")
    )
}
