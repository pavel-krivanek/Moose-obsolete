as yet unclassified
defineShapes
	"define shapes if scrollBar is horizontal or vertical."

	"set bar shape, the draggable shape."	
	(self barShape = #aBox) 
		ifTrue: [ self shapes bar: TRBoxShape new ] 
		ifFalse: [ self shapes bar: TREllipseShape new ].

	"Start and stop are made to show the border of scroll Bar"
	(self orientation = #horizontal) ifTrue: [
		self shapes defineHorizontalShapes. 
	].

	(self orientation = #vertical) ifTrue: [ 	
		self shapes defineVerticalShapes. 	
	].
	