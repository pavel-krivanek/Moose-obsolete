Class {
	#name : #FmxNGEntity,
	#superclass : #FmxNGEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #MQ }
FmxNGEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetMooseQueryCaches.]
]

{ #category : #MQ }
FmxNGEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]

{ #category : #accessing }
FmxNGEntity >> belongsTo [
	"Return the primary container of the entity if it exist"
	
	^ self subclassResponsibility
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isAccess [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isAssociation [
	^false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isAttribute [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isBehaviouralEntity [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isClass [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isContainerEntity [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isFunction [
	^false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isInheritance [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isInvocation [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isMethod [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isNamespace [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isPackage [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isPrimitiveType [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isReference [
	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGEntity >> isType [
	^ false
]
