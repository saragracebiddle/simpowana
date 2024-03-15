#' Generate data sets based on the provided parameters
#'
#' @param sims number of simulations to generate
#' @param n_subj number of subjects in one data set
#' @param tau_1 by-subject random slope sd
#' @param beta_1 expected change in tau from one time point to the next
#' @param n_cycles number of time points for each subject
#'
#' @return data.table of randomly generated data sets
#' @export
gen_data <- function(sims, n_subj, tau_1, beta_1, n_cycles){
    sigma = 5.54 # residual (standard deviation)
    gammashape = 1.57 # shape of gamma distribution
    gammascale = 12.5 # expected value of gamme distribution

    rho = 0.2 # correlation between intercept and slope
    beta_0 = 25.35 # grand mean

    sim = rep(1:sims, each = n_cycles*n_subj)


    # list of time points
    X_i = seq(1, n_cycles, by = 1)-1

    T_1s = rnorm(n_subj*sims, 0, tau_1)

    T_0s = rgamma(n_subj*sims, shape = gammashape, scale = gammascale) + (beta_0 - gammascale)-beta_0

    e_si = rnorm(n_cycles * n_subj * sims, mean = 0, sd = sigma)

    dat = data.table(sim,
                     subj_id = c(rep(rep(1:n_subj, each = n_cycles), times = sims)),
                     T_1s = c(rep(T_1s, each = n_cycles)),
                     T_0s = c(rep(T_0s, each = n_cycles)),
                     X_i = c(rep(X_i, times = n_subj*sims)),
                     e_si,
                     tau_1,
                     beta_1,
                     n_subj,
                     n_cycles)
    dat[,TSITau := beta_0 + T_0s + (beta_1 + T_1s)*X_i + e_si]

    return(dat)
}
