*petitislands
acceptsEpsilonOpenSet: set
	(set includes: parser) ifFalse: [ 
		set add: parser.
		^ parser acceptsEpsilonOpenSet: set 
	].
	^ false