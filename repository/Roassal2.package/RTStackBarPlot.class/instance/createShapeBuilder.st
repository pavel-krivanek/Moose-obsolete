hooks
createShapeBuilder
	| sb |
	sb := RTShapeBuilder new.
	sb
			rectangle; 
			height: [ :anObject | self height rtValue: anObject ];
			color: [ :association | self colorPalette level: (association value / self numberOfValuesPerRow) ];
			yourself.
	^ sb