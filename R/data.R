#' Results from mixed effects models that vary by Beta_1
#'
#' See lmer_modresults_nsubj for generation of data sets
#'
#' For each combination of
#' nsubj = 10,15,20,30,45,60 and tau_1 = 1.25,1.5,1.75,2.0,2.25,2.5
#' 5000 datasets were generated for a total of
#' 180000 datasets
#' and the mixed effects model was run on every dataset for a total of
#' 180000 models
#' Each model has 6 rows of information
#' for a total of 1080000 rows
#'
#' @format ## `nsubj_results`
#' A data frame with 12 columns and 1080000 rows
#' \describe{
#'  \item{V1}{rownumber}
#'  \item{sim}{simulation number}
#'  \item{tau_1}{tau_1 value used when generating data}
#'  \item{effect}{fixed or random effect}
#'  \item{group}{NA for fixed effects, subj id for random effects}
#'  \item{term}{model term name}
#'  \item{estimate}{estimate for model term}
#'  \item{std.error}{estimate standard error for model term}
#'  \item{statistic}{statistic value}
#'  \item{df}{degrees of freedom}
#'  \item{p.value}{p value of statistic}
#'  \item{n_subj}{number of subjects generated for the data set}
#' }


#' Results from mixed effects models that vary by Beta_1
#'
#' See lmer_modresults_bybeta for generation of data sets
#'
#' For each combination of
#' nsubj = 10,15,20,30,45,60 and beta_1 = 0.5,0.99,1.5,2.0
#' 5000 datasets were generated for a total of
#' 120000 datasets
#' and the mixed effects model was run on every dataset for a total of
#' 120000 models
#' Each model has 6 rows of information
#' for a total of 720000 rows
#'
#' @format ## `bybeta_results`
#' A data frame with 12 columns and 720000 rows
#' \describe{
#'  \item{V1}{rownumber}
#'  \item{sim}{simulation number}
#'  \item{beta_1}{beta_1 value used when generating data}
#'  \item{effect}{fixed or random effect}
#'  \item{group}{NA for fixed effects, subj id for random effects}
#'  \item{term}{model term name}
#'  \item{estimate}{estimate for model term}
#'  \item{std.error}{estimate standard error for model term}
#'  \item{statistic}{statistic value}
#'  \item{df}{degrees of freedom}
#'  \item{p.value}{p value of statistic}
#'  \item{n_subj}{number of subjects generated for the data set}
#' }



#' Results from mixed effects models that vary by number of cycles
#'
#' See lmer_modresults_bycycles for generation of data sets
#'
#' For each combination of
#' nsubj = 10,15,20,30,45,60 and n_cycles = 3,5,7,9
#' 5000 datasets were generated for a total of
#' 120000 datasets
#' and the mixed effects model was run on every dataset for a total of
#' 120000 models
#' Each model has 6 rows of information
#' for a total of 720000 rows
#'
#' @format ## `bycycles_results`
#' A data frame with 12 columns and 720000 rows
#' \describe{
#'  \item{V1}{rownumber}
#'  \item{sim}{simulation number}
#'  \item{n_cycles}{n_cycles value used when generating data}
#'  \item{effect}{fixed or random effect}
#'  \item{group}{NA for fixed effects, subj id for random effects}
#'  \item{term}{model term name}
#'  \item{estimate}{estimate for model term}
#'  \item{std.error}{estimate standard error for model term}
#'  \item{statistic}{statistic value}
#'  \item{df}{degrees of freedom}
#'  \item{p.value}{p value of statistic}
#'  \item{n_subj}{number of subjects generated for the data set}
#' }


#' Results from mixed effects models that vary by number of cycles
#'
#' See lmer_modresults_bycycles_varyb in data-raw
#' for generation of data sets
#'
#' Since beta_1 is likely dependent on number of cycles,
#' these take the variation of beta_1 by number of chemotherapy cycles into account
#' by dividing the overall change from pre-chemotherapy to post-chemotherapy
#' by the number of chemotherapy cycles
#'
#' For each combination of
#' nsubj = 10,15,20,30,45,60 and n_cycles|beta_1 = 3|9.99/3,5|9.99/5,7|9.99/7,9|9.99/9
#' 5000 datasets were generated for a total of
#' 120000 datasets
#' and the mixed effects model was run on every dataset for a total of
#' 120000 models
#' Each model has 6 rows of information
#' for a total of 720000 rows
#'
#' @format ## `bycycles_varyb_results`
#' A data frame with 12 columns and 720000 rows
#' \describe{
#'  \item{V1}{rownumber}
#'  \item{sim}{simulation number}
#'  \item{n_cycles}{n_cycles value used when generating data}
#'  \item{effect}{fixed or random effect}
#'  \item{group}{NA for fixed effects, subj id for random effects}
#'  \item{term}{model term name}
#'  \item{estimate}{estimate for model term}
#'  \item{std.error}{estimate standard error for model term}
#'  \item{statistic}{statistic value}
#'  \item{df}{degrees of freedom}
#'  \item{p.value}{p value of statistic}
#'  \item{n_subj}{number of subjects generated for the data set}
#' }
