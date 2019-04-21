process_letter(letter, condition) {
  n <- read.csv(paste('google_', letter)) %>% 
    filter(condition) %>% 
    mutate(decade = floor(year/100)*100) %>% 
    group_by(decade, word) %>% 
    summarize(count = sum(count)) %>% 
    
}