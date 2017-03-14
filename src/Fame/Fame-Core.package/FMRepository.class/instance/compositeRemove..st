removing
compositeRemove: element
	
	| meta |

	self remove: element.
	meta := self metaDescriptionOf: element.
	meta allAttributes do: [ :attr |
		(attr type isPrimitive not and: [ attr isComposite ]) ifTrue: [
			| values |
			values := self get: attr element: element.
			values do: [ :value |
				(self includes: value) ifTrue: [
					self deepRemove: value ]]]].
	self postRemove: element.