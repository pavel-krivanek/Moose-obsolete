Class {
	#name : #MooseModelCopier,
	#superclass : #Object,
	#instVars : [
		'model',
		'table'
	],
	#category : 'Famix-Extensions'
}

{ #category : #running }
MooseModelCopier >> copyModel: aMooseModel [
	"
	self new copyModel: MooseModel root second 
	"
	
		"run the visitor on namespace then packages, visit entities hierarchially, make sure
	before visiting an entity that it has not been visited before"

	model := MooseModel new.
	model name: aMooseModel name copy.
	model sourceLanguage: aMooseModel sourceLanguage copy.
	aMooseModel allPackages do: [:p|
		self visit: p ].
	aMooseModel allNamespaces do: [:n|
		self visit: n	].
	^ model
]

{ #category : #initialize-release }
MooseModelCopier >> initialize [

	table := IdentityHashTable new.
	
]

{ #category : #accessing }
MooseModelCopier >> model [
	^ model
]

{ #category : #accessing }
MooseModelCopier >> model: anObject [
	model := anObject
]

{ #category : #running }
MooseModelCopier >> timedCopyModel: aMooseModel [
	"
	self new timedCopyModel: MooseModel root second 
	"
	
	^ Time millisecondsToRun: [ (self copyModel: aMooseModel) inspect ]
]

{ #category : #running }
MooseModelCopier >> visit: anEntity [
	anEntity ifNil: [ ^ nil ].
	^ table 	at: anEntity
				ifAbsentPut: [|newEntity|
					newEntity := model add: anEntity class new.
					newEntity copyFrom: anEntity within: self.
					newEntity ]
		"#copyFrom:within: should copy basic attributes like name, then will visit relations and check with #ensure: or #visit: to link entities and visit them if necessary"
]
