accessing
children
	self flag: 'HACK ???'.
	(beforeWaterParser isNotNil and: [afterWaterParser isNotNil]) ifTrue: [ 
		^ Array with: beforeWaterParser with: island with: afterWaterParser
	].
 	^ Array with: water with: island with: water
