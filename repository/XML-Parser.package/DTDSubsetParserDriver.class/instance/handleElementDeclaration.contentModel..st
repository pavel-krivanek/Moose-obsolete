handling - dtd
handleElementDeclaration: aName contentModel: aContentModel
	| newElementValidator |

	newElementValidator :=
		self isStandaloneExternal
			ifTrue: [
				self doctypeDefinition
					addStandaloneExternalValidatorForElement: aName
					contentModel: aContentModel]
			ifFalse: [
				self doctypeDefinition
					addValidatorForElement: aName
					contentModel: aContentModel].

	self isValidating
		ifTrue: [
			newElementValidator
				ifNil: [self errorMultipleDeclarationsForElement: aName].
			newElementValidator validateElementDeclaration].