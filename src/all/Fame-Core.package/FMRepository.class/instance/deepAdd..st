adding
deepAdd: element
	
	| meta |
	elements add: element.
	meta := self metaDescriptionOf: element.
	meta allAttributes do: [ :attr |
		attr type isPrimitive not ifTrue: [
			| values |
			values := self get: attr element: element.
			values do: [ :value |
				(self includes: value) ifFalse: [
					self deepAdd: value ]]]].
	self postAdd: element.