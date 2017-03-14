accessing
replace: parser with: anotherParser 
	super replace: parser with: anotherParser.
	
	(beforeWaterParser == parser) ifTrue: [ beforeWaterParser := anotherParser ].
	(afterWaterParser == parser) ifTrue: [ afterWaterParser := anotherParser ].
	(defaultBeforeWaterParser == parser) ifTrue: [ defaultBeforeWaterParser := anotherParser ].
	(defaultAfterWaterParser == parser) ifTrue: [ defaultAfterWaterParser := anotherParser ].
	(water == parser) ifTrue: [ water := anotherParser ].
	(island == parser) ifTrue: [ island := anotherParser ].