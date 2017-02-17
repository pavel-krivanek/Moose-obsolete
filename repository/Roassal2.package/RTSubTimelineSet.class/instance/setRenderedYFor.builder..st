rendering
setRenderedYFor: element builder: timelineBuilder
	^ (super setRenderedYFor: element builder: timelineBuilder)
		+ ((self level rtValue: element model) - 1 * element height)