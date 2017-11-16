Extension { #name : #MADescription }

{ #category : #'*magritte-morph-defaults' }
MADescription class >> defaultMorphClass [
	^ self defaultMorphClasses notEmpty
		ifTrue: [ self defaultMorphClasses first ]
]

{ #category : #'*magritte-morph-defaults' }
MADescription class >> defaultMorphClasses [
	^ Array new
]

{ #category : #'*magritte-morph-defaults' }
MADescription class >> defaultMorphColor [
	^ Color white
]

{ #category : #'*magritte-morph-accessing' }
MADescription >> descriptionMorphClass [
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #morphClass;
		label: 'Morph Class';
		priority: 2000;
		reference: MAClassDescription new;
		options: self class defaultMorphClasses;
		default: self class defaultMorphClass;
		yourself
]

{ #category : #'*magritte-morph-accessing' }
MADescription >> morphClass [
	^ self propertyAt: #morphClass ifAbsent: [ self class defaultMorphClass ]
]

{ #category : #'*magritte-morph-accessing' }
MADescription >> morphClass: aClass [
	^ self propertyAt: #morphClass put: aClass
]

{ #category : #'*magritte-morph-accessing' }
MADescription >> morphColor [
	^ self propertyAt: #morphColor ifAbsent: [ self class defaultMorphColor ]
]

{ #category : #'*magritte-morph-accessing' }
MADescription >> morphColor: aColor [
	^ self propertyAt: #morphColor put: aColor
]
