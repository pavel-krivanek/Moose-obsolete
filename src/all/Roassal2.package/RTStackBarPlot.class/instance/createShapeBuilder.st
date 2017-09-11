hooks
createShapeBuilder
	| sb |
	sb := RTShapeBuilder new.
	sb
			rectangle; 
			height: [ :anObject | self height rtValue: anObject ];
			width: [ :anObject | self width rtValue: anObject ];
			color: [ :association |
				self colorPalette level: (self levelFor: association value) ];
			yourself.
	^ sb
	
