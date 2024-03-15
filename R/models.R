#' Wrapper around glmmPQL
#'
#' Wrap purrr::possibly around glmmPQL to handle errors
#'
#' @param ...
#'
#' @importFrom MASS glmmPQL
#' @importFrom purrr possibly
#' @export
posglmmPQL <- function(...){
  possibly(glmmPQL, otherwise = NA, quiet = T)
}

#' Run glmmPQL on simulated data
#'
#' @param df data.table
#'
#' @return results of glmmPQL
#' @export
glmmPQL_model <- function(df){
  posglmmPQL(TSITau ~ 1 + X_i,
             random = ~X_i | subj_id,
             family = Gamma(link = 'inverse'),
             data = df,
             verbose = FALSE)
}

#' Run glmmPQL on simulated data using correlation
#'
#' @param df dataframe of simulated data
#'
#' @return results from glmmPQL
#' @importFrom nlme corAR1
#' @export
glmmPQL_modelcorAR <- function(df){
  posglmmPQL(TSITau ~ 1 + X_i,
             random = ~X_i | subj_id ,
             family = Gamma(link = 'inverse'),
             data = df,
             correlation = corAR1(),
             verbose = FALSE)
}

#' Wrapper around LMER
#'
#' @param ... provided arguments to lmer
#'
#' @importFrom purrr possibly
#' @importFrom lme4 lmer
#' @export
posLMER <- function(...){
  possibly(lmer, otherwise = NA, quiet = TRUE)
}

#' run lmer on simulated data
#'
#' @param df dataframe of simulated data
#'
#' @return results from lmer
#' @export
lmer_model <- function(df){
  posLMER(TSITau ~ 1 + X_i + (1 + X_i|subj_id),
          data = df, REML = FALSE, verbose = FALSE)
}

#' Wrapper around lme
#'
#' @param ... provided arguments to lme
#'
#' @importFrom purrr possibly
#' @importFrom nlme lme
#' @export
poslme <- function(...){
  purrr::possibly(lme, otherwise = NA, quiet = T)
}

#' Run poslme on simulated data
#'
#' @param df dataframe of simulated data
#'
#' @return results from lme
#' @importFrom nlme corAR1
#' @export
lme_model_corAR <- function(df){
  poslme(data = df,
         TSITau ~ 1 + X_i,
         random = ~X_i | subj_id,
         correlation = corAR1())
}

