# Capstone Little Women Project
# Becca Campbell
# beccacampbell@arizona.edu
# 2024-02-18

#### Housekeeping ####

# git repository link: git@github.com:BeccaLC/Little_Woman1.git

library(ggplot2)


# creating dataframe

lw <- data.frame(Name = c("Meg", "Jo", "Beth", "Amy"),
                 Times.Mentioned = c(683, 1355, 459, 645)
                 )

#### Plot ####

## col

ggplot(data = lw, mapping = aes(x = Name, y = Times.Mentioned, fill = Name)
       ) +
  geom_col(aes(fill = Name)) + 
  labs(
    x = "Name",                           # x axis title
    y = "Number of Mentions",            # y axis title
    title = "Names of Little Women",      # main title of figure
    #color = "title of legend"             # title of legend
  ) +
  
  theme_light()

# Bar

ggplot(data = lw, mapping = aes(x = Name, y = Times.Mentioned, fill = Name)
) +
  geom_bar(stat = "Identity", aes(fill = Name)) + 
  labs(
    x = "Name",                           # x axis title
    y = "Number of Mentions",            # y axis title
    title = "Names of Little Women",      # main title of figure
    #color = "title of legend"             # title of legend
  ) +
  
  theme_light()

# printing
 lw.plot <- ggplot(data = lw, mapping = aes(x = Name, y = Times.Mentioned, fill = Name)
 ) +
   geom_bar(stat = "Identity", aes(fill = Name)) + 
   labs(
     x = "Name",                           # x axis title
     y = "Number of Mentions",            # y axis title
     title = "Names of Little Women",      # main title of figure
     #color = "title of legend"             # title of legend
   ) +
   
   theme_light()

 print(lw.plot)
 ggsave(filename = "lw.plot.png", plot = lw.plot)

 # pushing to Git
 
