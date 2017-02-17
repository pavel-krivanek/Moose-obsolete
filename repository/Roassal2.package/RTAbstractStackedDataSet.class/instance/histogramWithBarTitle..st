obsolete
histogramWithBarTitle: aBlockOrSymbol
	"Draw an histogram with title"
	"THIS IS AN OBSOLETE METHOD. Rewrite your code to use RTData and barShape.
For example:
	
b := RTGrapher new.
ds := RTData new.
ds points: #(1 4 2 3 5 6).
ds barShape.
b add: ds.
b
	"
	self histogramWithBarTitle: aBlockOrSymbol rotation: -45