accessing
dictionaryValues
	^ self values
		collect: [ :row | 
			(row withIndexCollect: [ :each :i | (firstRow at: i) asSymbol -> each ])
				asOrderedDictionary ]