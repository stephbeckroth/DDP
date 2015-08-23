shinyUI(pageWithSidebar(
  headerPanel("Average time spent on this project (hours)"),
  sidebarPanel(
    numericInput('time', 'Enter your time spent on this project in hours:', 2, min = 0, max = 120, step = 0.05),
    submitButton('Submit')
  ),
  mainPanel(
    h2 ('Average time spent in hours:'),
    h4 ('You entered:'),
    verbatimTextOutput("time"),
    h4 ('I spent 2 hours.'),
    code ('
    mytime <- 2
    timespent <- (time + mytime)/2 ' ),
    h4 ('Our average time spent on this project in hours is '),
    verbatimTextOutput ("timespent")
  )
))