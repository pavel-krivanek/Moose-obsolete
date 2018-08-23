Class {
	#name : #FmxNGTest2Generator,
	#superclass : #FmxNGBasicInfrastructureGenerator,
	#instVars : [
		'classEntity',
		'inheritance'
	],
	#category : #FmxNGTestGenerators
}

{ #category : #accessing }
FmxNGTest2Generator class >> packageName [

	^ #'FmxNGTest2-Entities'
]

{ #category : #accessing }
FmxNGTest2Generator class >> prefix [

	^ #'FmxNGTest2'
]

{ #category : #definition }
FmxNGTest2Generator >> defineClasses [

	super defineClasses.

	classEntity := builder newClassNamed: #Class.
	inheritance := builder newClassNamed: #Inheritance.


]

{ #category : #definition }
FmxNGTest2Generator >> defineHierarchy [

	super defineHierarchy.

	classEntity --|> namedEntity.
	classEntity --|> #TClass.
	classEntity --|> #TWithSuperInheritances.
	classEntity --|> #TWithSubInheritances.

	inheritance --|> association.
	inheritance --|> #TSubInheritance.
	inheritance --|> #TSuperInheritance.


	


]

{ #category : #definition }
FmxNGTest2Generator >> newBuilder [

	^ self builderWithStandardTraits
		generateImportingContext: true;
		yourself
		
		
	
]
