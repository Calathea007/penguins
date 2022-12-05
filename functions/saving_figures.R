save_regression_plot_svg <- function(penguins_clean,filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, 
          width = size_inches,
          height = size_inches,
          scaling = scaling)
  flipper_mass_regression_plot <- plot_regression_figure(penguins_clean)
  print(flipper_mass_regression_plot)
  dev.off()
}