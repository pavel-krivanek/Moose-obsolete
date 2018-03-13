Class {
	#name : #FmxNGBehaviouralEntity,
	#superclass : #FmxNGBehaviouralEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGBehaviouralEntity class >> annotation [

	<MSEClass: #BehaviouralEntity super: #FmxNGBehaviouralEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addAccess: anAccess [ 
	accesses add: anAccess
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addImplicitVariable: anImplicitVariable [
	implicitVariables add: anImplicitVariable
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addIncomingInvocation: anInvocation [
	incomingInvocations add: anInvocation
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addLocalVariable: aLocalVariable [
	localVariables add: aLocalVariable
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addOutgoingInvocation: anInvocation [
	outgoingInvocations add: anInvocation
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addOutgoingReference: aReference [ 
	outgoingReferences add: aReference
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addParameter: aParameter [ 
	parameters add: aParameter
]

{ #category : #'moosequery-queries-incoming' }
FmxNGBehaviouralEntity >> incomingTypeDeclarations [
	^ {}
]

{ #category : #'Famix-Implementation' }
FmxNGBehaviouralEntity >> isBehaviouralEntity [
	^ true
]

{ #category : #'moosequery-queries-outgoing' }
FmxNGBehaviouralEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]
