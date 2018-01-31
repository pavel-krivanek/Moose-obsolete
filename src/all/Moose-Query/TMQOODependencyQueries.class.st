Class {
	#name : #TMQOODependencyQueries,
	#superclass : #Object,
	#category : #'Moose-Query-FamixNG'
}

{ #category : #'as yet unclassified' }
TMQOODependencyQueries >> queryIncomingInheritances [
	^ self queryIncoming: FAMIXInheritance
]

{ #category : #'as yet unclassified' }
TMQOODependencyQueries >> queryOutgoingInheritances [
	^ self queryOutgoing: FAMIXInheritance
]

{ #category : #'as yet unclassified' }
TMQOODependencyQueries >> queryStaticIncomingAssociations [

	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		addAll: self queryIncomingInheritances;
		yourself

]

{ #category : #'as yet unclassified' }
TMQOODependencyQueries >> queryStaticOutgoingAssociations [

	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		addAll: self queryOutgoingInheritances;
		yourself

]
