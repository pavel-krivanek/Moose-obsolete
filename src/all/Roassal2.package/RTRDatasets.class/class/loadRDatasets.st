util
loadRDatasets
	"Load the list of data sets and packages"
	rDataSets  := RTTabTable new
		input: 'http://vincentarelbundock.github.com/Rdatasets/datasets.csv' asUrl retrieveContents
		usingDelimiter: $,.
	rDataSets removeFirstRow.
	
	"Apparently, this is not necessary"
	"rDataSets convertColumns: #(1 2 3 4) to:[:aString| aString allButFirst allButLast ]"