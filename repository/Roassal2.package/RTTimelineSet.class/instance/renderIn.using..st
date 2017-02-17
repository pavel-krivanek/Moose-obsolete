rendering
renderIn: view using: timelineBuilder

	| translator |
	self setRenderedHeight: timelineBuilder.
		
	elements := shapeBuilder elementsOn: objects.
	interactionBuilder setUpElements: elements.
	view addAll: elements.
	
	"We set the width of the elements"
	RTMetricNormalizer new
		elements: elements;
		normalizeWidth: [ :anObject | (end rtValue: anObject) - (start rtValue: anObject) ]
			min: self minimumEventWidth
			max: timelineBuilder extent x
			minValue: 0
			maxValue: globalMax.

	"For the location"
	translator := RTDirectLayoutTranslator new.
	elements do: [ :e | 
		| nx ny |
		nx := self setRenderedXFor: e builder: timelineBuilder.
		ny := self setRenderedYFor: e builder: timelineBuilder.
		translator translateTopLeftOf: e to: nx @ ny ].
