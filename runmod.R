###############################################
## compile & run model
##############################################

# compile
model <-jags.model(file = "jagsmod.txt",
                   data = datls,
                   n.chains = 3,
                   n.adapt = 3000)

# run
update(model, n.iter=2500,progress.bar = 'none')
# store results
results <- coda.samples(model,variable.names=c("pr", "seHT", "seKK"),n.iter=1000,
                        progress.bar = 'none')

res <- do.call(rbind.data.frame, results)

saveRDS(res, "jagsres.rds")

rm(results)
