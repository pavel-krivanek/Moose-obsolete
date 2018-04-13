"
FAMIXAssociation is an abstract superclass for relationships between Famix named entities. It defines a polymorphic API refined by subclasses: essentially from, to, next and previous.

From and To properties are abstract at this level, but specific implementations can have multiple ends and properties. 
For example, FAMIXInheritance has:
	(i) From mapped to the subclass;
	(ii) To mapped to the superclass.
	
To adapt your code to MooseQuery, you have also to add the <source> and <target> pragmas in the selectors definition for each class inheriting FAMIXAssociation

Next and Previous properties provide an order of the appearence of these associations in code. The order is calculated within a particular relationship for example, method invocation order within a calling method (from).
For example in java, the following code
 method a() { b(); c(); }
will produce two invocation associations first from method a to method b, and second from method a to method c. These associations are bound together and can be navigated with previous and next.




"
Class {
	#name : #FmxNGTAssociation,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#next => FMOne type: #FmxNGTAssociation opposite: #previous',
		'#previous => FMOne type: #FmxNGTAssociation opposite: #next'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAssociation class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAssociation super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTAssociation >> next [

	<generated>
	<MSEComment: 'Next association in an ordered collection of associations. Currently not supported by the Moose importer'>
	^ next
]

{ #category : #accessing }
FmxNGTAssociation >> next: anObject [

	<generated>
	next := anObject

]

{ #category : #accessing }
FmxNGTAssociation >> previous [

	<generated>
	<MSEComment: 'Previous association in an ordered collection of associations. Currently not supported by the Moose importer'>
	^ previous
]

{ #category : #accessing }
FmxNGTAssociation >> previous: anObject [

	<generated>
	previous := anObject

]
