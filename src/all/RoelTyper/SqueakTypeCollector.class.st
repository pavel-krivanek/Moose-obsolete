Class {
	#name : #SqueakTypeCollector,
	#superclass : #TypeCollector,
	#category : #'RoelTyper-Squeak'
}

{ #category : #heuristics }
SqueakTypeCollector >> assignmentTypeOf: val [
	val isBehavior ifTrue: [^val].
	val isVariableBinding
		ifTrue:
			[val key == #instcreation
				ifTrue: [^val value]
				ifFalse: [^val value class]].
	^nil
]

{ #category : #heuristics }
SqueakTypeCollector >> langueSpecificPushSendOf: selector to: rec args: args [
	selector == #blockCopy: ifTrue: [^#block].
	(#(#// #quo: #rem: #\\ #ceiling #floor #rounded #roundTo: #truncated #truncateTo: #/ #+ #- #* #abs #negated #reciprocal)
		includes: selector)
		ifTrue:
			[^self
				tryUsing: rec
				for: selector
				ifNotUse: Number].
	(selector = #yourself) ifTrue: [^rec].
	(rec = #self and: [(theClass methodDict includesKey: selector)]) ifTrue: [^#return->selector].
	^#computed
]

{ #category : #private }
SqueakTypeCollector >> newExtractor [
	^SqueakInstvarInterfaceExtractor new
]