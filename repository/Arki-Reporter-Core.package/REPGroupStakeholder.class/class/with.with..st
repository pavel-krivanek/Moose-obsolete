instance creation
with: aStakeholder with: anotherStakeholder
	^ self new
		addAll: (OrderedCollection with: aStakeholder with: anotherStakeholder);
		yourself