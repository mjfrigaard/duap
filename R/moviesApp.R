#' moviesApp (demo)
#'
#' @return shiny app
#' @export moviesApp
#'
#' @importFrom shiny shinyApp fluidPage
#' @importFrom shiny sidebarLayout sidebarPanel
#' @importFrom shiny mainPanel
moviesApp <- function() {
  shiny::shinyApp(
    ui = shiny::fluidPage(
      shiny::sidebarLayout(
        shiny::sidebarPanel(
          mod_var_input_ui("vars")
        ),
        shiny::mainPanel(
          mod_display_plot_ui("plot")
        )
      )
    ),
    server = function(input, output, session) {

      selected_vars <- mod_var_input_server("vars")

      mod_display_plot_server("plot", var_inputs = selected_vars)
    }
  )
}
