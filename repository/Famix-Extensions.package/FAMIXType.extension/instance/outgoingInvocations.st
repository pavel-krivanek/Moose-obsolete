*Famix-Extensions-navigation
outgoingInvocations
	^ self methods flatCollect: [ :each | each outgoingInvocations ]