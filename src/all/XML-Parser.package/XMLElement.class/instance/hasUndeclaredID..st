private
hasUndeclaredID: anID
	"just look for an 'xml:id' attribute if there were no declarations"
	^ (self
		attributeAt: 'xml:id'
		ifAbsent: [^ false]) = anID