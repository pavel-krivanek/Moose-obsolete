rendering
setRenderedXFor: element builder: timelineBuilder
	^ (start rtValue: element model) / globalMax * timelineBuilder extent x