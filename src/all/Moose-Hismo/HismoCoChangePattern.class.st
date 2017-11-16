Class {
	#name : #HismoCoChangePattern,
	#superclass : #MooseGroup,
	#instVars : [
		'concept',
		'histories',
		'versions'
	],
	#category : 'Moose-Hismo'
}

{ #category : #'instance creation' }
HismoCoChangePattern class >> annotation [
	<MSEClass: #CoChangePattern super: #MooseGroup>
	<package: #Hismo>
]

{ #category : #accessing }
HismoCoChangePattern >> concept [
	
	^concept
]

{ #category : #accessing }
HismoCoChangePattern >> concept: anObject [
	
	concept := anObject
]

{ #category : #accessing }
HismoCoChangePattern >> histories [
	
	^histories
]

{ #category : #accessing }
HismoCoChangePattern >> histories: anObject [
	
	histories := anObject
]

{ #category : #printing }
HismoCoChangePattern >> printOn: aStream [
	
	histories ifNotNil: 
		[ histories
 		 	do: [ :aHistory | aStream nextPutAll: aHistory mooseName ]
  			separatedBy: [ aStream nextPut: $, ] ].
		
	versions ifNil: [  ^ super printOn: aStream ].
	
	versions
		do:
			[:each | aStream nextPutAll: (each history indexOf: each) mooseDisplayString]
		separatedBy: [aStream nextPutAll: ',']
]

{ #category : #accessing }
HismoCoChangePattern >> versions [
	
	^versions
]

{ #category : #accessing }
HismoCoChangePattern >> versions: anObject [
	
	versions := anObject
]
