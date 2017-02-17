validating
validateNotationAttributeDeclaration: aNotationAttributeValidator
	| oldSize |

	"checking size after is faster than includes:"
	oldSize := self notationAttributeValidators size.
	(self notationAttributeValidators
		at: aNotationAttributeValidator element
		put: aNotationAttributeValidator;
		size) > oldSize
		ifFalse: [
			self errorMultipleNotationAttributesForElement:
				aNotationAttributeValidator element].