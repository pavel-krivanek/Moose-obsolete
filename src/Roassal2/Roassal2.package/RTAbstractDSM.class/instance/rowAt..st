accessing
rowAt: aNumber
	"Return the elements located at a given row"
	^ (1 to: objectsX size) collect: [ :i | self elementAt: i @ aNumber ]