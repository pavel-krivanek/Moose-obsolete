Class {
	#name : #FmxNGNamespaceGenerated,
	#superclass : #FmxNGScopingEntity,
	#instVars : [
		'#namespaceEntities => FMMany type: #FmxNGTNamespaceEntity opposite: #parentNamespace',
		'#namespaceOwner => FMOne type: #FmxNGTWithNamespaces opposite: #namespaces'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGNamespaceGenerated class >> annotation [

	<MSEClass: #NamespaceGenerated super: #FmxNGScopingEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGNamespaceGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGNamespaceGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTNamespace}
]
