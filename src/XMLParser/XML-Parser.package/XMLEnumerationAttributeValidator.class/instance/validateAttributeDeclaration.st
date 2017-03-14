validating
validateAttributeDeclaration
	| oldAllowedValues |

	oldAllowedValues := self allowedValues.
	self allowedValues: oldAllowedValues asSet.
	(self allowedValues size < oldAllowedValues size)
		ifTrue: [self errorEnumerationContainsDuplicateValues].

	super validateAttributeDeclaration.