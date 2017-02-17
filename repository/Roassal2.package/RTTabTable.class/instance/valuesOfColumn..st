accessing
valuesOfColumn: indexAsNumberOfString
	"Return the values stored in the column. Note that these values may not be cleaned, ie. nil values may be contained"
	^ values collect: [ :row | row at: (self convertFromNameToIndexIfNecessary: indexAsNumberOfString) ]