

url = "cd_catalog.xml" #URL tomada de youtube 

#crear xml

mixml = xmlParse(url)

#acceder al nodo principal

root = xmlRoot(mixml)

root[1]

#xml a dataframe 

dfxml = xmlSApply(root, function(x) xmlSApply(x, xmlValue))

traspon = data.frame(t(dfxml), row.names = NULL)



