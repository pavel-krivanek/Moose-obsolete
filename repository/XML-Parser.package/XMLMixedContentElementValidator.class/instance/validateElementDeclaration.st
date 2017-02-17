validating
validateElementDeclaration
	| oldAllowedContentCollection |

	oldAllowedContentCollection := self allowedContent.
	self allowedContent: oldAllowedContentCollection asSet.
	(self allowedContent size < oldAllowedContentCollection size)
		ifTrue: [self errorContentContainsDuplicates].