cleaning <- function(data_raw){
  data_raw %>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("Delta")) %>%
    select(-Comments) %>%
    clean_names()
}

remove_empty_body_mass<- function(data_clean){
  data_clean %>%
    filter(!is.na(body_mass_g)) %>%
    select(species, body_mass_g)
}