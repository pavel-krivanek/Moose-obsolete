hooks
render
	self view
		when: TRMouseDragStart
		do: [ :evt | 
			| x |
			x := evt positionFromCamera x.
			pointWhenStartingDragging := x @ builder extent y negated.
			rectangle := pointWhenStartingDragging corner: x @ 0.
			visualRange := TRBoxShape new
				fromRectangle: rectangle
				color: Color blue trans.
			self view canvas addShape: visualRange.
			self signalUpdate ].
	self view
		when: TRMouseDragging
		do: [ :evt | 
			rectangle := Rectangle
				encompassing:
					(Array
						with: pointWhenStartingDragging
						with: evt positionFromCamera x @ 0).
			visualRange fromRectangle: rectangle.
			self signalUpdate ].
	self view
		when: TRMouseDragEnd
		do: [ :evt | 
			self callbackWithSelectedElements.
			visualRange remove.
			self signalUpdate ]