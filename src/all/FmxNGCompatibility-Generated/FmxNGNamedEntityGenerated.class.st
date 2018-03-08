Class {
	#name : #FmxNGNamedEntityGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#receivingInvocations => FMMany type: #FmxNGTInvocation opposite: #receiver',
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity',
		'#isStub',
		'#name',
		'#parentPackage => FMOne type: #FmxNGTPackage opposite: #childEntities',
		'#modifiers'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGNamedEntityGenerated class >> annotation [

	<MSEClass: #NamedEntityGenerated super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGNamedEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGNamedEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTInvocationsReceiver. FmxNGTNamed. FmxNGTPackageable. FmxNGTWithAnnotationInstances. FmxNGTWithModifiers}
]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> addModifier: aString [

	<MSEProperty: #modifiers type: #String> "Really?"
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers ifNil: [ modifiers := Set new ]
]

{ #category : #'_fromTrait_FmxNGTWithAnnotationInstancesGenerated' }
FmxNGNamedEntityGenerated >> annotationInstances [

	<MSEComment: 'This property corresponds to the set of annotations associated to the entity'>
	^ annotationInstances
]

{ #category : #'_fromTrait_FmxNGTWithAnnotationInstancesGenerated' }
FmxNGNamedEntityGenerated >> annotationInstances: anObject [

	annotationInstances value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> isFinal [
	<MSEProperty: #isFinal type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> isPackage [
	<MSEProperty: #isPackage type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self modifiers includes: #package
]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> isPrivate [
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private
]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> isProtected [
	<MSEProperty: #isProtected type: #Boolean> <derived>
	<MSEComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self modifiers includes: #protected
]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> isPublic [
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGNamedEntityGenerated >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGNamedEntityGenerated >> isStub: anObject [

	isStub := anObject

]

{ #category : #'_fromTrait_FmxNGTWithModifiersGenerated' }
FmxNGNamedEntityGenerated >> modifiers [

	<MSEProperty: #modifiers type: #String>
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers
]

{ #category : #'_fromTrait_FmxNGTWithModifiersGenerated' }
FmxNGNamedEntityGenerated >> modifiers: anObject [

	modifiers := anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGNamedEntityGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxNGNamedEntityGenerated >> name: anObject [

	name := anObject

]

{ #category : #'_fromTrait_FmxNGTPackageableGenerated' }
FmxNGNamedEntityGenerated >> parentPackage [

	^ parentPackage
]

{ #category : #'_fromTrait_FmxNGTPackageableGenerated' }
FmxNGNamedEntityGenerated >> parentPackage: anObject [

	parentPackage := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationsReceiverGenerated' }
FmxNGNamedEntityGenerated >> receivingInvocations [

	<MSEComment: 'List of invocations performed on this entity (considered as the receiver)'>
	^ receivingInvocations
]

{ #category : #'_fromTrait_FmxNGTInvocationsReceiverGenerated' }
FmxNGNamedEntityGenerated >> receivingInvocations: anObject [

	receivingInvocations value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithModifiers' }
FmxNGNamedEntityGenerated >> removeModifier: aString [
	self modifiers remove: aString ifAbsent: []
]
