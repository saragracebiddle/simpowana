## code to prepare `lmer_modresults_nsubj` datasets
## and then bind into nsubj_results dataset

set.seed(3850)

d = gen_data(sims = 5000, n_subj = 10, tau_1 = 1.25)
d2 = gen_data(sims = 5000, n_subj = 10, tau_1 = 1.5)
d3 = gen_data(sims = 5000, n_subj = 10, tau_1 = 1.75)
d4 = gen_data(sims = 5000, n_subj = 10, tau_1 = 2.0)
d5 = gen_data(sims = 5000, n_subj = 10, tau_1 = 2.25)
d6 = gen_data(sims = 5000, n_subj = 10, tau_1 = 2.5)

d <- rbind(d, d2, d3, d4, d5, d6)
rm(d2, d3,d4,d5,d6)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,tau_1)]

lmercorarmodresults <- d[, broom.mixed::tidy(lme_model_corAR(.SD)), by = .(sim,tau_1)]

write.csv(lmer_modresults,'lmer_modresults_nsubj_10.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 15, tau_1 = 1.25)
d2 = gen_data(sims = 5000, n_subj = 15, tau_1 = 1.5)
d3 = gen_data(sims = 5000, n_subj = 15, tau_1 = 1.75)
d4 = gen_data(sims = 5000, n_subj = 15, tau_1 = 2.0)
d5 = gen_data(sims = 5000, n_subj = 15, tau_1 = 2.25)
d6 = gen_data(sims = 5000, n_subj = 15, tau_1 = 2.5)

d <- rbind(d, d2, d3, d4, d5, d6)
rm(d2, d3,d4,d5,d6)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,tau_1)]

write.csv(lmer_modresults,'lmer_modresults_nsubj_15.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 20, tau_1 = 1.25)
d2 = gen_data(sims = 5000, n_subj = 20, tau_1 = 1.5)
d3 = gen_data(sims = 5000, n_subj = 20, tau_1 = 1.75)
d4 = gen_data(sims = 5000, n_subj = 20, tau_1 = 2.0)
d5 = gen_data(sims = 5000, n_subj = 20, tau_1 = 2.25)
d6 = gen_data(sims = 5000, n_subj = 20, tau_1 = 2.5)

d <- rbind(d, d2, d3, d4, d5, d6)
rm(d2, d3,d4,d5,d6)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,tau_1)]

write.csv(lmer_modresults,'lmer_modresults_nsubj_20.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 30, tau_1 = 1.25)
d2 = gen_data(sims = 5000, n_subj = 30, tau_1 = 1.5)
d3 = gen_data(sims = 5000, n_subj = 30, tau_1 = 1.75)
d4 = gen_data(sims = 5000, n_subj = 30, tau_1 = 2.0)
d5 = gen_data(sims = 5000, n_subj = 30, tau_1 = 2.25)
d6 = gen_data(sims = 5000, n_subj = 30, tau_1 = 2.5)

d <- rbind(d, d2, d3, d4, d5, d6)
rm(d2, d3,d4,d5,d6)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,tau_1)]

lmercorar_modresults <- d[, broom.mixed::tidy(lme_model_corAR(.SD)), by = .(sim,tau_1)]
write.csv(lmercorar_modresults,'lmecorAR_modresults_nsubj_30.csv')
rm(lmercorar_modresults)

write.csv(lmer_modresults,'lmer_modresults_nsubj_30.csv')

rm(lmer_modresults)
gc()


d = gen_data(sims = 5000, n_subj = 45, tau_1 = 1.25)
d2 = gen_data(sims = 5000, n_subj = 45, tau_1 = 1.5)
d3 = gen_data(sims = 5000, n_subj = 45, tau_1 = 1.75)
d4 = gen_data(sims = 5000, n_subj = 45, tau_1 = 2.0)
d5 = gen_data(sims = 5000, n_subj = 45, tau_1 = 2.25)
d6 = gen_data(sims = 5000, n_subj = 45, tau_1 = 2.5)

d <- rbind(d, d2, d3, d4, d5, d6)
rm(d2, d3,d4,d5,d6)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,tau_1)]

lmercorar_modresults <- d[, broom.mixed::tidy(lme_model_corAR(.SD)), by = .(sim,tau_1)]

write.csv(lmercorar_modresults,'lmecorAR_modresults_nsubj_45.csv')
rm(lmercorar_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 60, tau_1 = 1.25)
d2 = gen_data(sims = 5000, n_subj = 60, tau_1 = 1.5)
d3 = gen_data(sims = 5000, n_subj = 60, tau_1 = 1.75)
d4 = gen_data(sims = 5000, n_subj = 60, tau_1 = 2.0)
d5 = gen_data(sims = 5000, n_subj = 60, tau_1 = 2.25)
d6 = gen_data(sims = 5000, n_subj = 60, tau_1 = 2.5)

d <- rbind(d, d2, d3, d4, d5, d6)
rm(d2, d3,d4,d5,d6)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,tau_1)]
lmercorar_modresults <- d[, broom.mixed::tidy(lme_model_corAR(.SD)), by = .(sim,tau_1)]

write.csv(lmercorar_modresults,'lmecorAR_modresults_nsubj_60.csv')
rm(lmercorar_modresults)
gc()

rm(d)

nsubj_10 <- fread('data-raw/lmer_modresults_nsubj_10.csv')
nsubj_15 <- fread('data-raw/lmer_modresults_nsubj_15.csv')
nsubj_20 <- fread('data-raw/lmer_modresults_nsubj_20.csv')
nsubj_30 <- fread('data-raw/lmer_modresults_nsubj_30.csv')
nsubj_45 <- fread('data-raw/lmer_modresults_nsubj_45.csv')
nsubj_60 <- fread('data-raw/lmer_modresults_nsubj_60.csv')

nsubj_10[,'n_subj' := 10]
nsubj_15[, 'n_subj' := 15]
nsubj_20[, 'n_subj' := 20]
nsubj_30[, 'n_subj' := 30]
nsubj_45[, 'n_subj' := 45]
nsubj_60[, 'n_subj' := 60]

nsubj_results <- rbind(nsubj_10, nsubj_15, nsubj_20, nsubj_30, nsubj_45, nsubj_60)
rm(nsubj_10, nsubj_15, nsubj_20, nsubj_30, nsubj_45, nsubj_60)

usethis::use_data(nsubj_results)
