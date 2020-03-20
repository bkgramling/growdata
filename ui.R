library(shiny)
library(shinydashboard)

dashboardPage(
    dashboardHeader(title = "GrowData",
                    dropdownMenuOutput("messageMenu"),
                    dropdownMenu(type = "notifications",
                                 notificationItem(
                                     text = "5 new plants today",
                                     icon("users")
                                 ),
                                 notificationItem(
                                     text = "12 items delivered",
                                     icon("truck"),
                                     status = "success"
                                 ),
                                 notificationItem(
                                     text = "Server load at 86%",
                                     icon = icon("exclamation-triangle"),
                                     status = "warning"
                                 )
                    )
                    ),
    dashboardSidebar(menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
                     menuItem("Vegetables", icon = icon("th"), tabName = "widgets",
                              badgeLabel = "new", badgeColor = "green")
                     ),
    dashboardBody(tabItems(
        tabItem(tabName = "dashboard",
                h2("Dashboard tab content")
        ),
        
        tabItem(tabName = "widgets",
                h2("Widgets tab content")
        )
    ))
)