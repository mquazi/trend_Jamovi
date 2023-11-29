## File: mannkendall.b.r 
mannkendallClass <-
    if (requireNamespace('jmvcore', quietly = TRUE))
        R6::R6Class("mannkendallClass",
            inherit = mannkendallBase,
            private = list(
                .run = function() {

                    if ( length(self$options$x) < 1 )
                        return()

                    results <- Kendall::MannKendall(x = self$data[, self$options$x])

                    self$results$text$setContent(results)

                }

            )
        )
