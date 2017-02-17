handling
handleWhitespace: aString
	self isValidating
		ifTrue: [
			self validator isCurrentElementWhitespaceIgnorable
				ifTrue: [
					(self elementNester hasScopedAttributes
						and: [
							(self elementNester scopedAttributeAt: 'xml:space') =
								'preserve'])
						ifTrue: [self saxHandler characters: aString]
						ifFalse: [self saxHandler ignorableWhitespace: aString].
					^ self]
				ifFalse: [
					"only validate if it's not ignorable"
					self validator validatePCData: aString]].
	self saxHandler characters: aString.