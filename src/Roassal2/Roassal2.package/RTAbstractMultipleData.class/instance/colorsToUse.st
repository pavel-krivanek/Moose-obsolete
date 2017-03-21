accessing
colorsToUse
	"Return a collection of colors to use"
	^ colors isEmpty 
		ifTrue: [ self colorPalette ]
		ifFalse: [ colors ]