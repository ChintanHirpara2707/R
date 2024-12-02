data=read.csv("Z:\\BSC IT SEM-5\\Data Mining\\41 Car Price.CSV")
print(data)

unique(data$fuletype)
unique(data$aspiration)
unique(data$doornumber)
unique(data$carbody)
unique(data$drivewheel)
unique(data$enginelocation)
unique(data$enginetype)
unique(data$cylindernumber)
unique(data$fuelsystem)

data$fuletype=factor(data$aspiration,levels=c('gas','diesel'),
                     labels=c(1,2))
print(data$fuletype)


data$aspiration=factor(data$aspiration,levels=c('std','turbo'),
                       labels=c(1,2))
print(data$aspiration)

data$doornumber=factor(data$doornumber,levels=c('two','four'),labels=c(1,2))
print(data$doornumber)

data$carbody=factor(data$carbody,levels=c('convertible','hatchback','sedan',
                                          'wagon','hardtop'),
                   labels=c(1,2,3,4,5))
data$drivewheel=factor(data$drivewheel,levels=c('rwd','fwd','4wd'),
                       labels=c(1,2,3))
print(data$drivewheel)

data$enginelocation=factor(data$enginelocation,levels=c('front','rear'),
                           labels=c(1,2))
print(data$enginelocation)

data$enginetype=factor(data$enginetype,levels=c('dohc','ohcv','ohc','l',
                                                'rotor','ohcf','dohcv'),
                       labels=c(1,2,3,4,5,6,7))
print(data$enginetype)
