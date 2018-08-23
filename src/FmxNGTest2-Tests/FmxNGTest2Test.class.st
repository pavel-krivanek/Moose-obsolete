Class {
	#name : #FmxNGTest2Test,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'c1',
		'c2',
		'c3',
		'c4',
		'c5',
		'i1',
		'i2',
		'i3',
		'i4',
		'i5'
	],
	#category : #'FmxNGTest2-Tests'
}

{ #category : #running }
FmxNGTest2Test >> setUp [

	super setUp.

	model := MooseModel new.
	c1 := FmxNGTest2Class named: 'Class1'.
	c2 := FmxNGTest2Class named: 'Class2'.
	c3 := FmxNGTest2Class named: 'Class3'.
	c4 := FmxNGTest2Class named: 'Class4'.
	c5 := FmxNGTest2Class named: 'Class5'.
	
	i1 := FmxNGTest2Inheritance new. 
	i2 := FmxNGTest2Inheritance new. 
	i3 := FmxNGTest2Inheritance new. 
	i4 := FmxNGTest2Inheritance new. 
	i5 := FmxNGTest2Inheritance new. 
	
	model addAll: { c1. c2. c3. c4. c5. i1. i2. i3. i4. i5 }.
	
	i1 superclass: c1; subclass: c2.
	"opposite way"
	c1 addSubInheritance: i2. 	
	c3 addSuperInheritance: i2.
	
	i3 superclass: c2; subclass: c4.
	i4 superclass: c2; subclass: c5.
	i5 superclass: c3; subclass: c5.
]

{ #category : #running }
FmxNGTest2Test >> testInheritances [

	self assertCollection: (c1 subInheritances collect: #subclass) hasSameElements: { c2. c3 }.
	self assertCollection: (c2 subInheritances collect: #subclass) hasSameElements: { c4. c5 }.	
	self assertCollection: (c3 subInheritances collect: #subclass) hasSameElements: { c5 }.	

]
