library(stylo)
data("novels")


?load.corpus

token = txt.to.words.ext(novels, corpus.lang = "English.all", preserve.case = FALSE)

?txt.to.words.ext
stylo.pronouns(corpus.lang = "Spanish")

dcorpus = make.samples(token, sampling = "normal.sampling",sample.size = 20000)

?make.samples

frecuencia = make.frequency.list(dcorpus, head = 3000)

?make.frequency.list

frame_frecuencia=as.data.frame(frecuencia)

freqs = make.table.of.frequencies(dcorpus, features = frecuencia)

culled = perform.culling(freqs, culling.level = 80)

?perform.culling


stylo(frequencies = culled, gui = FALSE)

stylo(frequencies = culled, analysis.type = "PCR",
      custom.graph.title = "An?lisis",
      pca.visual.flavour = "technical",
      write.png.file = FALSE, gui = FALSE)


stylo(frequencies = culled, analysis.type = "PCR",
      custom.graph.title = "An?lisis",
      write.png.file = FALSE, gui = FALSE)

stylo(frequencies = culled, analysis.type = "PCR",
      custom.graph.title = "An?lisis",
      pca.visual.flavour = "symbols", colors.on.graphs = "black",
      write.png.file = FALSE, gui = FALSE)

stylo(frequencies = culled, analysis.type = "PCR",
      custom.graph.title = "An?lisis",
      pca.visual.flavour = "loadings",
      write.png.file = FALSE, gui = FALSE)


