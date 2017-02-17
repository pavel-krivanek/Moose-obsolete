*petitislands
isIslandBorderOpenSet: set
	(set includes: parser) ifFalse: [ 
		set add: parser.
		^ parser isIslandBorderOpenSet: set 
	].
	^ false