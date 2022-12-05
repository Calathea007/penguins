badplotting_mass <- function(no_na_body_mass){
  no_na_body_mass %>%
  ggplot(aes(x = species,y = body_mass_g))+         
  geom_boxplot(width = 0.99)+
    theme_classic()
}


plot_regression_figure <- function(penguins_clean){
  penguins_clean %>%
    ggplot(aes(x=body_mass_g, y=flipper_length_mm))+
    geom_point(aes(colour=species, shape = species))+
    geom_smooth(method='lm', colour = 'black')+
    theme_bw()+
    scale_color_manual(values = c('purple', "cyan2", "darkorange"))+
    scale_shape_manual(values = c(15,16,17))+
    labs(x = 'Body Mass (g)', 
         y = 'Flipper Length (mm)',
         title = 'Regression of body mass and flipper length', 
         subtitle = "Flipper length increases with body mass")
         

}