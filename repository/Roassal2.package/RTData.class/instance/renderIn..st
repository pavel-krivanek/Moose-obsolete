hooks
renderIn: aView

	"This is a bit ugly. Maybe having a class hierarchy would be better"
	shouldHaveBars 
		ifTrue: [ self renderBarChartIn: aView ]
		ifFalse: [ self renderDotAndLinesIn: aView ]
	
