library(shiny)

shinyUI(fluidPage(
    titlePanel("woo... shiny..."),

    sidebarLayout(
        position = "right",
        sidebarPanel("sidebar panel",
                     h2("Installation"),
                     p("Shiny is awesome, and really easy to learn.  You can install it using:"),
                     code('install.packages("shiny")'),
                     actionButton("42button", label = "42"),
                     br(),
                     sliderInput("slider1", label = h3("Sliders"),
                                  min = 0, max = 100, value = 50),

                     checkboxGroupInput("checkGroup",
                                        label = h3("Checkbox group"),
                                        choices = list("Choice 1" = 1,
                                            "Choice 2" = 2, "Choice 3" = 3),
                                        selected = 1)
                     ),

        mainPanel("main panel",
                  h1("First level title", align = "center"),
                  h2("Second level title"),
                  h3("Third level title"),
                  h4("Fourth level title"),
                  h5("Fifth level title"),
                  h6("sixth level title", align = "right"),
                  "the quick brown fox jumps over the lazy dog.",
                  p("p creates a paragraph of text.Note: this paragraph is followed by br(), which makes a blank line."),
                  p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph", style = "font-family: 'times'; font-si16pt"),
                  strong("strong() makes bold text."),
                  em("em() creates italicized (i.e, emphasized) text."),
                  br(),
                  code("code displays your text similar to computer code"),
                  div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
                  br(),
                  p("span does the same thing as div, but it works with",
                    span("groups of words", style = "color:blue"),
                    "that appear inside a paragraph."),

                  img(src = "curositySelfie.jpg", width = 720),

                  "while you're at it, check out my",
                  a("blog", href = "http://www.mrdanielchen.com")


                  )
        )

    ))
