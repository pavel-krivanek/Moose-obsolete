validating
validateAndResolvePrefix: aPrefix ofElement: aName
	aPrefix size = 0 "optimization"
		ifTrue: [
			self validateUnprefixedName: aName.
			^ self defaultNamespace]
		ifFalse: [^ self validateAndResolvePrefix: aPrefix]