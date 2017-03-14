accessing
defineVerticalShapes

		self bar height: self scrollBuilder barHeight; width: self scrollBuilder width; color: (Color lightGray);  position: self scrollBuilder fixedPosition; strokePaint: nil.
		
		"This shape is the the fill of the scroll bar"
		self surroundingRectangle: (TRBoxShape new width: self scrollBuilder width; height: self scrollBuilder size; position: (self scrollBuilder fixedPosition x )@(self scrollBuilder fixedPosition y); color: self scrollBuilder fillColor; strokePaint: nil).

		"the margeRectangle handle the width/2 of the bar"
		self margeRectangle: (TRBoxShape new fromRectangle: (Rectangle origin: (self surroundingRectangle encompassingRectangle origin)corner: (self surroundingRectangle encompassingRectangle corner)); color: (Color gray alpha:0); strokePaint: nil).