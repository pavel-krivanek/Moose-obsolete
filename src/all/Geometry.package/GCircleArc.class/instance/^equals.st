as yet unclassified
= anArc
	self species = anArc species
		ifFalse: [ ^ false ].
	^ self circle = anArc circle
		and: [ self startAngle = anArc startAngle and: [ self endAngle = anArc endAngle ] ]