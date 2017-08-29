MusicPred <- function(mood){
  if (mood=="happy") "Happy by Pharrell Williams"
  else if (mood=="sad") "Sorrow by Pink Floyd"
  else if (mood=="alone") "Time After Time by Cyndi Lauper"
  else if (mood=="angry") "Highway to hell by AC DC"
  else if (mood=="bitchy") "Rebel Son - Quit Your Bitchin"
  else if (mood=="blank") "Feeling Blank Again by Jay Reatard"
  else if (mood=="confused") "Dazed and Confused by Led Zeppelin"
  else if (mood=="depressed") "Small Bump by Ed Sheeran"
  else if (mood=="energetic") "Time by Pink Floyd"
  else if (mood=="geeky") "New Periodic Table Song by AsapSCIENCE"
  else if (mood=="high") "High Hopes by Pink Floyd"
  else if (mood=="lazy") "The Lazy Song by Bruno Mars"
  else if (mood=="pleased") "Stairway To Heaven by Led Zeppelin"
}

MoviePred <- function(movie){
  if (movie=="action") "Raiders of the Lost Ark (1981)"
  else if (movie=="musicals") "Evita (1996)"
  else if (movie=="biopic") "Shine (1996)"
  else if (movie=="period") "Sense and Sensibility (1995)"
  else if (movie=="romance") "The English Patient (1996)"
  else if (movie=="animation") "Toy Story (1995)"
  else if (movie=="science fiction") "E.T. - The Extra-Terrestrial (1982)"
  else if (movie=="cult") "Pulp Fiction (1994)"
  else if (movie=="disaster") "Armageddon (1998)"
  else if (movie=="spy") "Mission: Impossible (1996)"
  else if (movie=="drama") "The Deer Hunter (1978)"
  else if (movie=="fantasy") "Lord of the Rings"
  else if (movie=="thriller") "The Silence of the Lambs (1991)"
  else if (movie=="gangster") "GoodFellas (1990)"
  else if (movie=="war") "Saving Private Ryan (1998)"
  else if (movie=="westerns") "Unforgiven (1992)"
  else if (movie=="horror") "Poltergeist (1982)"
}


shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$mood})
    output$prediction <- renderPrint({MusicPred(input$mood)})
    
    output$inputValue2 <- renderPrint({input$movie})
    output$prediction2 <- renderPrint({MoviePred(input$movie)})
  }
)