shinyUI(
  pageWithSidebar(
    
    headerPanel("Music and Film Adviser"),
    sidebarPanel(
      textInput('mood', label="You are feeling ?"),
      textInput('movie', label="Prefferable movie genre"),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Suggested song and movie'),
      h4('You are feeling'),
      verbatimTextOutput("inputValue"),
      h4('You entered this genre'),
      verbatimTextOutput("inputValue2"),
      h4('well, listen to this one '),
      verbatimTextOutput("prediction"),
      h4('so you can watch this movie '),
      verbatimTextOutput("prediction2")
    )
  )
)