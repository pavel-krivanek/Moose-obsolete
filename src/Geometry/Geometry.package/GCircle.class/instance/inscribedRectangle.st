accessing
inscribedRectangle
	
	^ Rectangle
		origin: center - (radius / 2 sqrt)
		corner: center + (radius / 2 sqrt)
				