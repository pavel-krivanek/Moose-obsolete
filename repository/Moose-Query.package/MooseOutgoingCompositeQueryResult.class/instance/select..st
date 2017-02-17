enumerating
select: aBlock
	"We override it because we want to set the receiver and the two storage variables individually"
	
	^ self class
			on: self receiver
			withInvocations: (invocationStorage select: aBlock)
			withOtherDependencies: (storage select: aBlock)