# Author: mcmayer
# (C) Markus Mayer
# Date: 2016-05-17
#
# Analyse the stackexchange data
#

load('stackexchange.RData')     # load dataframe 'stackexchange'

# Quantiles of log(#answers)
png("images/distrib-answers.png", width=600, height=400)
plot(rev(log10(sort(stackexchange[,'answers']))), type='o', 
     ylab="log(#answers)", xlab='rank', main="Quantiles of log(#answers)")
dev.off()

# Quantiles of log(#users)
png("images/distrib-users.png", width=600, height=400)
plot(rev(log10(sort(stackexchange[,'users']))), type='o', 
     ylab="log(#users)", xlab='rank', main="Quantiles of log(#users)")
dev.off()

# number of answers  vs. #users
png('images/answers-users.png', width=600, height=400)
plot(log10(stackexchange[,'users']), log10(stackexchange[,'answers']),
     xlab="log(#users)", ylab="log(#answers)", main="#answers vs. #users")
dev.off()

# number of questions answered vs. questions asked
png('images/questions-answers.png', width=600, height=400)
plot(log10(stackexchange[,'questions']), log10(stackexchange[,'answers']),
     xlab='log(#questions)', ylab='log(#answers)', main="#answers vs. #questions")
dev.off()

# number of questions answered vs. questions asked
png('images/answered-questions.png', width=600, height=400)
plot(log10(stackexchange[,'users']), stackexchange[,'answered'],
     xlab='log(#users)', ylab='% answered', main="% answered vs. #users")
dev.off()
