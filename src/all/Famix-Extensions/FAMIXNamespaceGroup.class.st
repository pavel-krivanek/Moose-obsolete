"
FAMIXNamespaceGroup is a MooseGroup containing only FAMIX enities of type FAMIXNamespace.
"
Class {
	#name : #FAMIXNamespaceGroup,
	#superclass : #MooseGroup,
	#category : #'Famix-Extensions'
}

{ #category : #meta }
FAMIXNamespaceGroup class >> annotation [
	<MSEClass: #NamespaceGroup super: #MooseGroup>
	<package: #FAMIX>
	^self
]

{ #category : #algorithms }
FAMIXNamespaceGroup >> cyclesToAllProviderNamespaces [
	^ self cyclesToAll: #providerNamespaces
]
