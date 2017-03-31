private
emitTypeTestFor: aNodeTest with: aBlockOrNil
	(aNodeTest hasParent
		and: [aNodeTest nodeType = aNodeTest parent principalNodeType])
		ifTrue: [
			aBlockOrNil
				ifNotNil: [aBlockOrNil value]]
		ifFalse: [
			self
				emitAll: aNodeTest nodeType name;
				emit: $(.
			aBlockOrNil
				ifNotNil: [aBlockOrNil value].
			self emit: $)].
	^ aNodeTest