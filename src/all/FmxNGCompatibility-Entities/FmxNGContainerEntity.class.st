Class {
	#name : #FmxNGContainerEntity,
	#superclass : #FmxNGContainerEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGContainerEntity class >> annotation [

	<MSEClass: #ContainerEntity super: #FmxNGContainerEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGContainerEntity >> addFunction: aFunction [ 
	functions add: aFunction
]

{ #category : #accessing }
FmxNGContainerEntity >> addType: aType [ 
	types add: aType
]

{ #category : #accessing }
FmxNGContainerEntity >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<MSEComment: 'Number of direct children entities in the containment tree.'>
	<derived>
	
	^ self children size
]
