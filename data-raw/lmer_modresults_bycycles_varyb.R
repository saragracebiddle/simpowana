## code to prepare `lmer_modresults_bycycles_varyb` datasets
## and then bind into bycycles_varyb_results dataset
set.seed(56128)
d = gen_data(sims = 5000, n_subj = 10, n_cycles = 3, beta_1 = 9.99/3)
d2 = gen_data(sims = 5000, n_subj = 10, n_cycles = 5, beta_1 = 9.99/5)
d3 = gen_data(sims = 5000, n_subj = 10, n_cycles = 7, beta_1 = 9.99/7)
d4 = gen_data(sims = 5000, n_subj = 10, n_cycles = 10, beta_1 = 9.99/10)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,n_cycles)]

write.csv(lmer_modresults,'lmer_modresults_bycycles_nsubj_10_varyb.csv')
rm(lmer_modresults)


d = gen_data(sims = 5000, n_subj = 15, n_cycles = 3, beta_1 = 9.99/3)
d2 = gen_data(sims = 5000, n_subj = 15, n_cycles = 5, beta_1 = 9.99/5)
d3 = gen_data(sims = 5000, n_subj = 15, n_cycles = 7, beta_1 = 9.99/7)
d4 = gen_data(sims = 5000, n_subj = 15, n_cycles = 10, beta_1 = 9.99/10)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,n_cycles)]

write.csv(lmer_modresults,'lmer_modresults_bycycles_nsubj_15_varyb.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 20, n_cycles = 3, beta_1 = 9.99/3)
d2 = gen_data(sims = 5000, n_subj = 20, n_cycles = 5, beta_1 = 9.99/5)
d3 = gen_data(sims = 5000, n_subj = 20, n_cycles = 7, beta_1 = 9.99/7)
d4 = gen_data(sims = 5000, n_subj = 20, n_cycles = 10, beta_1 = 9.99/10)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,n_cycles)]

write.csv(lmer_modresults,'lmer_modresults_bycycles_nsubj_20_varyb.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 30, n_cycles = 3, beta_1 = 9.99/3)
d2 = gen_data(sims = 5000, n_subj = 30, n_cycles = 5, beta_1 = 9.99/5)
d3 = gen_data(sims = 5000, n_subj = 30, n_cycles = 7, beta_1 = 9.99/7)
d4 = gen_data(sims = 5000, n_subj = 30, n_cycles = 10, beta_1 = 9.99/10)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,n_cycles)]

write.csv(lmer_modresults,'lmer_modresults_bycycles_nsubj_30_varyb.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 45, n_cycles = 3, beta_1 = 9.99/3)
d2 = gen_data(sims = 5000, n_subj = 45, n_cycles = 5, beta_1 = 9.99/5)
d3 = gen_data(sims = 5000, n_subj = 45, n_cycles = 7, beta_1 = 9.99/7)
d4 = gen_data(sims = 5000, n_subj = 45, n_cycles = 10, beta_1 = 9.99/10)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,n_cycles)]

write.csv(lmer_modresults,'lmer_modresults_bycycles_nsubj_45_varyb.csv')
rm(lmer_modresults)
gc()

d = gen_data(sims = 5000, n_subj = 60, n_cycles = 3, beta_1 = 9.99/3)
d2 = gen_data(sims = 5000, n_subj = 60, n_cycles = 5, beta_1 = 9.99/5)
d3 = gen_data(sims = 5000, n_subj = 60, n_cycles = 7, beta_1 = 9.99/7)
d4 = gen_data(sims = 5000, n_subj = 60, n_cycles = 10, beta_1 = 9.99/10)

d <- rbind(d, d2, d3, d4)
rm(d2, d3,d4)
gc()

lmer_modresults <- d[, broom.mixed::tidy(lmer_model(.SD)), by = .(sim,n_cycles)]

write.csv(lmer_modresults,'lmer_modresults_bycycles_nsubj_60_varyb.csv')
rm(lmer_modresults)
gc()

rm(d)

nsubj_10 <- fread('data-raw/lmer_modresults_bycycles_nsubj_10_varyb.csv')
nsubj_15 <- fread('data-raw/lmer_modresults_bycycles_nsubj_15_varyb.csv')
nsubj_20 <- fread('data-raw/lmer_modresults_bycycles_nsubj_20_varyb.csv')
nsubj_30 <- fread('data-raw/lmer_modresults_bycycles_nsubj_30_varyb.csv')
nsubj_45 <- fread('data-raw/lmer_modresults_bycycles_nsubj_45_varyb.csv')
nsubj_60 <- fread('data-raw/lmer_modresults_bycycles_nsubj_60_varyb.csv')

nsubj_10[,'n_subj' := 10]
nsubj_15[, 'n_subj' := 15]
nsubj_20[, 'n_subj' := 20]
nsubj_30[, 'n_subj' := 30]
nsubj_45[, 'n_subj' := 45]
nsubj_60[, 'n_subj' := 60]

bycycles_varyb_results <- rbind(nsubj_10, nsubj_15, nsubj_20, nsubj_30, nsubj_45, nsubj_60)
rm(nsubj_10, nsubj_15, nsubj_20, nsubj_30, nsubj_45, nsubj_60)

usethis::use_data(bycycles_varyb_results)
