Extension { #name : #TOODependencyQueries }

{ #category : #'*Moose-Query-Extensions' }
TOODependencyQueries >> queryIncomingInheritances [
	^ self queryIncoming: FmxNGInheritance
]

{ #category : #'*Moose-Query-Extensions' }
TOODependencyQueries >> queryOutgoingInheritances [
	^ self queryOutgoing: FmxNGInheritance
]

{ #category : #'*Moose-Query-Extensions' }
TOODependencyQueries >> queryStaticIncomingAssociations [

	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		addAll: self queryIncomingInheritances;
		yourself

]

{ #category : #'*Moose-Query-Extensions' }
TOODependencyQueries >> queryStaticOutgoingAssociations [

	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		addAll: self queryOutgoingInheritances;
		yourself

]
