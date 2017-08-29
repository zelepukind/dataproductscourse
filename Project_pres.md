Music and Film Adviser
========================================================
author: by  Dmitriy
date: 29 August 2017
autosize: false

Introduction
========================================================

This application is developed using R Programming 
language in R Studio's IDE. The application
used shiny environment under R studio for interface
desigening.

Main uses of application are as follows:

- Predicting music according to mood
- Predicting movie according to genre

Instructions
========================================================

While inputting the mood and genre always keep caps-off

Below is the list of moods you can enter:

- happy
- sad
- alone
- angry
- bitchy
- blank
- confused
- depressed

========================================================

- energetic
- geeky
- high 
- lazy
- pleased
 
Below is the list of genre you can enter:

- action
- musicals
- biopic
- period
- romance

========================================================

- animation
- science fiction
- cult
- disaster
- spy
- drama
- fantasy
- thriller
- gangster
- war
- westerns
- horror


Slide With User Interface Code
========================================================
shinyUI(
  pageWithSidebar(
    
    headerPanel("Music and movie prediction"),
    sidebarPanel(
      textInput('mood', label="You are feeling ?(caps off)"),
      textInput('movie', label="movie genre (caps off)"),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Suggested song and movie'),
      h4('You are feeling'),
      verbatimTextOutput("inputValue"),
      h4('You entered this genre'),
      verbatimTextOutput("inputValue2"),
      h4('very well then, listen to this one '),
      verbatimTextOutput("prediction"),
      h4('and you can watch this movie '),
      verbatimTextOutput("prediction2")
    )
  )
)
 Slide With Server Code pt.1
========================================================
Huge  "else-if" construction:

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

 

 Slide With Server Code pt.2
========================================================
Again, huge  "else-if" construction:

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
  output$prediction2 <-renderPrint({MoviePred(input$movie)})
  }
)

Link for app
========================================================
Music and Film Adviser:

https://borobon.shinyapps.io/music_and_film_adviser/
