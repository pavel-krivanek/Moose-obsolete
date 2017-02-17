public - bar shape
barChartWithBarTitle: aBlockOrSymbol rotation: rotationInDegree color: aColor
	"Draw an histogram with title"
	| barLabelFactory |
	barLabelFactory := RTBarLabelFactory new.
	barLabelFactory label: aBlockOrSymbol.
	barLabelFactory rotation: rotationInDegree.
	barLabelFactory color: aColor.
	
	^ self barChartUsing: barLabelFactory