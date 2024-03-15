## code to prepare `lmer_modresults_bybeta` datasets
## and then bind into bybeta_results dataset

library(data.table)
set.seed(6248)

d = gen_data(sims = 5000, n_subj = 10, beta_1 = 0.5)
d2 = gen_data(sims = 5000, n_subj = 10, beta_1 = 0.99)
d3 = gen_data(sims = 5000, n_subj = 10, beta_1 = 1.5)
d4 = gen_data(sims = 5000, n_subj = 10, beta_1 = 2.0)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,beta_1)]

write.csv(lmer_modresults,'lmer_modresults_bybeta_nsubj_10.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 15, beta_1 = 0.5)
d2 = gen_data(sims = 5000, n_subj = 15, beta_1 = 0.99)
d3 = gen_data(sims = 5000, n_subj = 15, beta_1 = 1.5)
d4 = gen_data(sims = 5000, n_subj = 15, beta_1 = 2.0)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,beta_1)]

write.csv(lmer_modresults,'lmer_modresults_bybeta_nsubj_15.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 20, beta_1 = 0.5)
d2 = gen_data(sims = 5000, n_subj = 20, beta_1 = 0.99)
d3 = gen_data(sims = 5000, n_subj = 20, beta_1 = 1.5)
d4 = gen_data(sims = 5000, n_subj = 20, beta_1 = 2.0)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,beta_1)]

write.csv(lmer_modresults,'lmer_modresults_bybeta_nsubj_20.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 30, beta_1 = 0.5)
d2 = gen_data(sims = 5000, n_subj = 30, beta_1 = 0.99)
d3 = gen_data(sims = 5000, n_subj = 30, beta_1 = 1.5)
d4 = gen_data(sims = 5000, n_subj = 30, beta_1 = 2.0)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,beta_1)]

write.csv(lmer_modresults,'lmer_modresults_bybeta_nsubj_30.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 45, beta_1 = 0.5)
d2 = gen_data(sims = 5000, n_subj = 45, beta_1 = 0.99)
d3 = gen_data(sims = 5000, n_subj = 45, beta_1 = 1.5)
d4 = gen_data(sims = 5000, n_subj = 45, beta_1 = 2.0)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,beta_1)]

write.csv(lmer_modresults,'lmer_modresults_bybeta_nsubj_45.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 60, beta_1 = 0.5)
d2 = gen_data(sims = 5000, n_subj = 60, beta_1 = 0.99)
d3 = gen_data(sims = 5000, n_subj = 60, beta_1 = 1.5)
d4 = gen_data(sims = 5000, n_subj = 60, beta_1 = 2.0)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,beta_1)]

write.csv(lmer_modresults,'lmer_modresults_bybeta_nsubj_60.csv')
rm(lmer_modresults)
gc()

rm(d)

nsubj_10 <- fread('data-raw/lmer_modresults_bybeta_nsubj_10.csv')
nsubj_15 <- fread('data-raw/lmer_modresults_bybeta_nsubj_15.csv')
nsubj_20 <- fread('data-raw/lmer_modresults_bybeta_nsubj_20.csv')
nsubj_30 <- fread('data-raw/lmer_modresults_bybeta_nsubj_30.csv')
nsubj_45 <- fread('data-raw/lmer_modresults_bybeta_nsubj_45.csv')
nsubj_60 <- fread('data-raw/lmer_modresults_bybeta_nsubj_60.csv')

nsubj_10[,'n_subj' := 10]
nsubj_15[, 'n_subj' := 15]
nsubj_20[, 'n_subj' := 20]
nsubj_30[, 'n_subj' := 30]
nsubj_45[, 'n_subj' := 45]
nsubj_60[, 'n_subj' := 60]

bybeta_results <- rbind(nsubj_10, nsubj_15, nsubj_20, nsubj_30, nsubj_45, nsubj_60)
rm(nsubj_10, nsubj_15, nsubj_20, nsubj_30, nsubj_45, nsubj_60)

usethis::use_data(bybeta_results)
