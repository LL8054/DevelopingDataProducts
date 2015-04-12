# require(rCharts)
# haireye = as.data.frame(HairEyeColor)
# n1 <- nPlot(Freq ~ Hair, group = 'Eye', type = 'multiBarChart',
#             data=subset(haireye, Sex == 'Male')
# )
# n1$save('n1.html')
# cat('<iframe src ="n1.html" width=100%, height=600></iframe>')


# Facetted Scatterplot
# names(iris) = gsub("\\.", "", names(iris))
# r1 <- rPlot(SepalLength ~ SepalWidth | Species, data=iris, color='Species', type='point')
# r1$save('r1.html')
# cat('<iframe src="r1.html" width=100%, height=600></iframe>')

# Facetted Barplot
# hair_eye=as.data.frame(HairEyeColor)
# r2 <- rPlot(Freq ~ Hair | Eye, color='Eye', data=hair_eye, type='bar')
# r2$save('r2.html')
# cat('<iframe src="r2.html" width=100%, height=600></iframe>')
