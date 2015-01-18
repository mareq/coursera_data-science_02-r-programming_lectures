# Rprof()
# summaryRprof(), by.total, by.self, sample.interval, sampling.time


x <- rnorm(1048576)
y <- rnorm(1048576)

Rprof("04-06_rprof.out", interval=0.01)
z <- lm(x ~ y)
Rprof(NULL)

summaryRprof("04-06_rprof.out")

