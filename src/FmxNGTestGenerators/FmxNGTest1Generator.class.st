"
""
FmxNGSandboxGenerator new generate.
""
| model c c2 m m2 sa1 | 

model := MooseModel new.
c := FmxNGSandClass named: 'Class1'.
c2 := FmxNGSandClass named: 'Class2'.
m := FmxNGSandMethod named: 'method1'.
m2 := FmxNGSandMethod named: 'method2'.
""sa1 := FmxNGSandSourceTextAnchor new source: 'method1 source' .""
sa1 := FmxNGSandIndexedFileAnchor new fileName: '/tmp/s/source.txt'.
sa1 startPos: 3.
sa1 endPos: 10.

model addAll: { c. c2. m. m2. sa1 }.

m parentType: c.
m2 parentType: c2.

m sourceAnchor: sa1.

model.
"
Class {
	#name : #FmxNGTest1Generator,
	#superclass : #FmxNGFileBasedLanguageGenerator,
	#instVars : [
		'classEntity',
		'method'
	],
	#category : #FmxNGTestGenerators
}

{ #category : #accessing }
FmxNGTest1Generator class >> packageName [

	^ #'FmxNGTest1-Entities'
]

{ #category : #accessing }
FmxNGTest1Generator class >> prefix [

	^ #'FmxNGTest1'
]

{ #category : #definition }
FmxNGTest1Generator >> defineClasses [

	super defineClasses.

	classEntity := builder newClassNamed: #Class.
	method := builder newClassNamed: #Method.


]

{ #category : #definition }
FmxNGTest1Generator >> defineHierarchy [

	super defineHierarchy.

	method --|> namedEntity.
	method --|> #TMethod.

	classEntity --|> namedEntity.
	classEntity --|> #TClass.
	classEntity --|> #TWithMethods.

	


]

{ #category : #definition }
FmxNGTest1Generator >> newBuilder [

	^ self builderWithStandardTraits
		generateImportingContext: true;
		yourself
		
		
	
]
