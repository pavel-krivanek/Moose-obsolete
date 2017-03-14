rendering
setRenderedHeight: timelineBuilder
	shapeBuilder
		height:
			[ :obj | 
			(timelineBuilder extent y / timelineBuilder numberOfLines
				- self gapBetweenTimeLines) / self numberOfLevels - self gapBetweenLevels ]