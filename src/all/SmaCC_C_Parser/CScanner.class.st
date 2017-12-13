Class {
	#name : #CScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'typeNames'
	],
	#category : #'SmaCC_C_Parser'
}

{ #category : #'generated-initialization' }
CScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(76 'auto' 69) #(76 'break' 48) #(76 'case' 38) #(76 'char' 71) #(76 'const' 40) #(76 'continue' 47) #(76 'default' 39) #(76 'do' 54) #(76 'double' 61) #(76 'else' 46) #(76 'enum' 45) #(76 'extern' 58) #(76 'float' 67) #(76 'for' 49) #(76 'goto' 50) #(76 'if' 42) #(76 'int' 68) #(76 'long' 66) #(76 'register' 72) #(76 'return' 19) #(76 'short' 70) #(76 'signed' 56) #(76 'sizeof' 24) #(76 'static' 65) #(76 'struct' 43) #(76 'switch' 52) #(76 'typedef' 57) #(76 'union' 44) #(76 'unsigned' 51) #(76 'void' 73) #(76 'volatile' 41) #(76 'while' 53))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #testing }
CScanner class >> needsLineNumbers [
	^ true
]

{ #category : #generated }
CScanner >> CONSTANTId [
	^ 77
]

{ #category : #scanning }
CScanner >> IDENTIFIER [
	| name |
	name := outputStream contents.
	matchActions := (typeNames includes: name)
		ifTrue: [ Array with: self TypeNameId ]
		ifFalse: [ Array with: self IDENTIFIERId ].
	outputStream reset.
	^ SmaCCToken value: name start: start ids: matchActions
]

{ #category : #generated }
CScanner >> IDENTIFIERId [
	^ 76
]

{ #category : #generated }
CScanner >> TypeNameId [
	^ 150
]

{ #category : #scanning }
CScanner >> addTypeName: aString [
	typeNames add: aString
]

{ #category : #generated }
CScanner >> emptySymbolTokenId [
	^ 148
]

{ #category : #generated }
CScanner >> errorTokenId [
	^ 149
]

{ #category : #'initialize-release' }
CScanner >> initialize [
	super initialize.
	typeNames := Set new
]

{ #category : #generated }
CScanner >> scan1 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(78) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan1 ].
	true ] whileTrue
]

{ #category : #generated }
CScanner >> scan10 [
	[ self recordMatch: #(77).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan6 ].
	('LUlu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scan2 [
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $[)
				or: [ currentCharacter >= $] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scan3 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ [ self recordMatch: #(77).
			self step.
			currentCharacter == $' ] whileTrue.
			currentCharacter == $\
				ifTrue: [ ^ self scan4 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ])
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $( and: $[)
						or: [ currentCharacter >= $] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scan4 [
	self step.
	^ self scan3
]

{ #category : #generated }
CScanner >> scan5 [
	[ self recordMatch: #(77).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan6 ].
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scan6 [
	self step.
	('+-' includes: currentCharacter)
		ifTrue: [ self step ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scan7 [
	[ self recordMatch: #(77).
	self step.
	currentCharacter isDigit ] whileTrue.
	('FLfl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scan8 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(75) ].
			^ self scan8 ].
	true ] whileTrue
]

{ #category : #generated }
CScanner >> scan9 [
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForToken [
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX18 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX17 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX5 ].
	^ self scanForTokenX20
]

{ #category : #generated }
CScanner >> scanForTokenX1 [
	self recordMatch: #(77).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan9 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan6 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(77).
					self step.
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue.
					('LUlu' includes: currentCharacter)
						ifTrue: [ ^ self recordAndReportMatch: #(77) ] ].
			^ self reportLastMatch ].
	('LUlu' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX10 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX11 [
	self recordMatch: #(28).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(63) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX12 [
	self recordMatch: #(30).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX13 [
	[ self recordMatch: #(83).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX14 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(64) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX15 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX16 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX17 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX18 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX19 [
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(81) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX13 ].
	((currentCharacter between: $A and: $K)
		or: [ (currentCharacter between: $M and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue:
			[ self scanForTokenX4 ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX2 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan2 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX20 [
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $L
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	^ self scanForTokenX19
]

{ #category : #generated }
CScanner >> scanForTokenX3 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(81) ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(33).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(55) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX4 [
	[ self recordMatch: #(76).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : #generated }
CScanner >> scanForTokenX5 [
	self recordMatch: #(36).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX6 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(14).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(62) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX7 [
	self recordMatch: #(2).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(59) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX8 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> scanForTokenX9 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(74) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
CScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment #IDENTIFIER nil nil nil nil nil nil #whitespace)
]