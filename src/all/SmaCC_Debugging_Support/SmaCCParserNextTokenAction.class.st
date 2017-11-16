Class {
	#name : #SmaCCParserNextTokenAction,
	#superclass : #SmaCCParserStepAction,
	#category : 'SmaCC_Debugging_Support'
}

{ #category : #registration }
SmaCCParserNextTokenAction class >> gtActionFor: aDebugger [
	<gtSmaCCDebuggingParserAction>
	^ (self forDebugger: aDebugger) icon: GLMUIThemeExtraIcons glamorousInto
]

{ #category : #accessing }
SmaCCParserNextTokenAction >> defaultLabel [
	^ 'Next Token'
]

{ #category : #accessing }
SmaCCParserNextTokenAction >> defaultOrder [
	^ 100
]

{ #category : #accessing }
SmaCCParserNextTokenAction >> executeAction [
	| token |
	token := self session parser currentToken.
	self stepUntil: [ :context | self session parser currentToken ~~ token and: [ self session parser currentToken notNil ] ]
]
