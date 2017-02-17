private
conflictingSelectorsWith: anExtractedType
	| conflictingSelectors |
	conflictingSelectors := Dictionary new.
	anExtractedType interface
		do:
			[:selector | 
			self types
				do:
					[:aType | 
					(aType canUnderstand: selector)
						ifFalse:
							[(conflictingSelectors
								at: selector
								ifAbsentPut: [OrderedCollection new]) add: aType]]].
	^conflictingSelectors