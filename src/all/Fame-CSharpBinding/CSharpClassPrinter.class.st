"
I print a meta model class as a C# class. 


        private List<Function> functions = new List<Function>();

        [FameProperty(Name = ""functions"", Opposite = ""container"")]
        public List Functions
        {
            get { return Functions; }
            set { Functions = value; }
        }

        public void AddFunction(Function one)
        {
            Functions.Add(one);
        }

"
Class {
	#name : #CSharpClassPrinter,
	#superclass : #Object,
	#instVars : [
		'theStream',
		'theClass',
		'indent'
	],
	#category : #'Fame-CSharpBinding'
}

{ #category : #printing }
CSharpClassPrinter >> enterBlock [
	self writeLine: '{'.
	indent := indent + 2.
	
	
]

{ #category : #printing }
CSharpClassPrinter >> exitBlock [
	indent := indent - 2.
	self writeLine: '}'.
	
	
	
]

{ #category : #printing }
CSharpClassPrinter >> print: aClass in: aStream [
	theStream := aStream.
	theClass := aClass.
	indent := 0.
	self printUsings.
	self printNamespace.
]

{ #category : #printing }
CSharpClassPrinter >> printAttribute: fameProperty [
	|propName propType|
	propName := fameProperty name.
	propType := fameProperty type name.
	propType = 'Number' ifTrue: [ propType := 'int' ].
	propName = 'return' ifTrue: [ propName := '_return' ].
	fameProperty type package ~= nil ifTrue: [ propType:= fameProperty type package name, '.', propType].
	fameProperty isMultivalued
		ifTrue: [
					self writeLine: ('private List%<<2s>> <1s> = new List%<<2s>>();' 
						  expandMacrosWith: (propName) with: propType).
					self writeLine: ''.						
					self writeAttributeAnnotation: fameProperty.
					self writeLine: ('public List %<<1s>> ' expandMacrosWith: propType) , propName capitalized.
					self enterBlock.
						self writeLine: 'get { return ', propName,  '; }'.
            			self writeLine: 'set { ', propName,  ' = value; }'.				
					self exitBlock.		
					self writeLine: 'public void Add', (propName capitalized withoutSuffix: 's'), '(', propType, ' one)'.
					self enterBlock.
						self writeLine: propName, '.Add(one);'.
					self exitBlock.	
			 ]
		ifFalse: [ 
				  self writeAttributeAnnotation: fameProperty.
				  
				  self writeLine: 'public ', propType,' ', propName, ' { get; set; }'
			 ].
		self writeLine: ''.
]

{ #category : #printing }
CSharpClassPrinter >> printAttributes [
		|wrongAttributes|
		wrongAttributes := OrderedCollection  new.
		theClass attributes  do: [ :prop |
			[ 
			"we only want attributes that have a corresponding setter"
         theClass implementingClass methodNamed: (prop implementingSelector asMutator).
			"the line above tries to access the setter, if it does not find id an exception happens"
			self printAttribute: prop.
			] on: KeyNotFound do: [ wrongAttributes add: prop ].
		]. 	
]

{ #category : #printing }
CSharpClassPrinter >> printClass [
	self writeLine: '[FamePackage("', theClass package name, '")]'.
	self writeLine: '[FameDescription("', theClass name, '")]'.
	theClass superclass name = 'Object' ifTrue: [self writeLine: 'public class ', theClass name]; 
	ifFalse: [self writeLine: 'public class ', theClass name, ' : ', theClass superclass package name, '.', theClass superclass  name].
	self enterBlock.
	self printAttributes.
	self exitBlock.
	
	
]

{ #category : #printing }
CSharpClassPrinter >> printNamespace [
	self writeLine: 'namespace ', theClass packageName.
	self enterBlock.
	self printClass.
	self exitBlock.
]

{ #category : #printing }
CSharpClassPrinter >> printUsings [
	self writeLine: 'using Fame;'.
	self writeLine: 'using System;'.
	self writeLine: 'using FILE;'.
	self writeLine: 'using Dynamix;'.
	self writeLine: 'using FAMIX;'.
	self writeLine: 'using System.Collections.Generic;'.
	self writeLine: ''.

]

{ #category : #writing }
CSharpClassPrinter >> write: aString [ 
	|i|
	i := indent.
	i to: 1 by: -1 do: [ :index | theStream nextPutAll: ' ' ].
	theStream nextPutAll: aString.
]

{ #category : #writing }
CSharpClassPrinter >> writeAttributeAnnotation: aFM3PropertyDescription [ 
	self write: '[FameProperty(Name = "', aFM3PropertyDescription name,'"'.
	aFM3PropertyDescription hasOpposite ifTrue: [ theStream nextPutAll: ',  Opposite = "'; nextPutAll: aFM3PropertyDescription opposite name; nextPutAll: '"' ].
	theStream nextPutAll: ')]'.
	self writeLine: ''.
	
]

{ #category : #writing }
CSharpClassPrinter >> writeLine: aString [ 
	|i|
	i := indent.
	i to: 1 by: -1 do: [ :index | theStream nextPutAll: ' ' ].
	theStream nextPutAll: aString; nextPutAll: '<n>' expandMacros. 
]
