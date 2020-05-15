library(stylo) #activando el paquete stylo

#activar uno de los conjuntos de datos proporcionados por el paquete 'stylo';

#esta es una tabla de frecuencias de algunas novelas, incluyendo "The Cuckoo's Calling"

#por Robert Galbraith, también conocido como JK Rowling:

data(galbraith)

galbraith #para ver la tabla en si

imposters(galbraith) #ahora, hora de lanzar el método impostores:

#obteniendo la octava fila del conjunto de datos (contiene frecuencias para Galbraith):

my_text_to_be_tested = galbraith[8,]

#construir el conjunto de referencia para que no contenga la octava fila

my_frequency_table = galbraith[-c(8),]

#lanzamiento del método imposters:

imposters(reference.set = my_frequency_table, test = my_text_to_be_tested)

my_text_to_be_tested = galbraith[8,]

my_candidate = galbraith[16:23,]

my_imposters = galbraith[-c(8, 16:23),]

imposters(reference.set = my_imposters, test = my_text_to_be_tested, candidate.set = my_candidate)
