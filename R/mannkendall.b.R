
# This file is a generated template, your changes will not be overwritten

MannKendallClass <- R6::R6Class(
    "MannKendallClass",
    inherit = MannKendallBase,
    private = list(
        .run = function() {

            # `self$data` contains the data
            # `self$options` contains the options
            # `self$results` contains the results object (to populate)
          if ( length(self$options$x) < 1 )
            return()
          results <- Kendall::MannKendall(self$options$x)
          
          self$results$text$setContent(results)
        })
)
