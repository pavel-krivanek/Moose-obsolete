removing
deepRemove: element
	
	| meta |
	self remove: element.
	meta := self metaDescriptionOf: element.
	meta allAttributes do: [ :attr |
		attr type isPrimitive ifFalse: [
			| values |
			values := self get: attr element: element.
			values do: [ :value |
				(self includes: value) ifTrue: [
					self deepRemove: value ]]]].
	self postRemove: element.