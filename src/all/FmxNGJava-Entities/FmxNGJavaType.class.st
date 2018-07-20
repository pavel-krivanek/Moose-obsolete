Class {
	#name : #FmxNGJavaType,
	#superclass : #FmxNGJavaContainerEntity,
	#traits : 'FmxNGTParameterizedTypeUser + FmxNGTReferenceable + FmxNGTType + FmxNGTWithAttributes + FmxNGTWithMethods + FmxNGTWithSubInheritances + FmxNGTWithSuperInheritances + FmxNGTWithTypeAliases + FmxNGTWithTypedStructures',
	#classTraits : 'FmxNGTParameterizedTypeUser classTrait + FmxNGTReferenceable classTrait + FmxNGTType classTrait + FmxNGTWithAttributes classTrait + FmxNGTWithMethods classTrait + FmxNGTWithSubInheritances classTrait + FmxNGTWithSuperInheritances classTrait + FmxNGTWithTypeAliases classTrait + FmxNGTWithTypedStructures classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaType class >> annotation [

	<generated>
	<MSEClass: #Type super: #FmxNGJavaContainerEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedTypeUser FmxNGTReferenceable FmxNGTType FmxNGTWithAttributes FmxNGTWithMethods FmxNGTWithSubInheritances FmxNGTWithSuperInheritances FmxNGTWithTypeAliases FmxNGTWithTypedStructures)
]

{ #category : #meta }
FmxNGJavaType class >> requirements [

	<generated>
	^ { FmxNGJavaContainerEntity }
]
