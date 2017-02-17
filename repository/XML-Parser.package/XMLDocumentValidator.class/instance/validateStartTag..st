validating
validateStartTag: anElement
	self currentElementValidator
		ifNotNil: [:elementValidator |
			elementValidator validateStartTag: anElement].

	self elementValidatorStack addLast:
		(self
			elementValidatorFor: anElement
			ifNone: [
				self
					unvalidatedElement: anElement;
					defaultElementValidatorFor: anElement]) asReadyElementValidator.