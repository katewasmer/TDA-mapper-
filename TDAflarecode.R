#Code for creating flare in TDA mapper 
#this script is modified from the script found at http://homepage.divms.uiowa.edu/~idarcy/COURSES/TDA/LABS/LAB1_Rintro/createArtificalDataSets.r

Noise1 <- cbind(runif(200, -30,30), runif(200, 5,6))
Noise2 <- cbind(runif(200, -6,30), runif(200, -6,-5))
Noise3 <- cbind(runif(200, -6,-5), runif(200, -20,20))
Noise4 <- cbind(runif(200, 5,6), runif(200, -20,20))
Noise5 <- cbind(runif(200, -6,6), runif(200, -6,6))

flares <- rbind(Noise1, Noise2, Noise3, Noise4, Noise5)

flares1 <- data.frame(flares)

plot(flares1, asp = 1)









