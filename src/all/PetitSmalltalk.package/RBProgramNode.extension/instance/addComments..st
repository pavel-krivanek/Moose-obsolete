*petitsmalltalk-accessing
addComments: aCollectionOfIntervals
	(aCollectionOfIntervals isNil or: [ aCollectionOfIntervals isEmpty ])
		ifFalse: [ self comments: self comments , aCollectionOfIntervals ]