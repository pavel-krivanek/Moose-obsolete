Class {
	#name : #JSScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-initialization' }
JSScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(97 'as' #(62 #(#default #template))) #(97 'break' #(83 #(#default #template))) #(97 'case' #(64 #(#default #template))) #(97 'catch' #(50 #(#default #template))) #(97 'class' #(65 #(#default #template))) #(97 'const' #(82 #(#default #template))) #(97 'continue' #(85 #(#default #template))) #(97 'debugger' #(47 #(#default #template))) #(97 'default' #(54 #(#default #template))) #(97 'delete' #(38 #(#default #template))) #(97 'do' #(89 #(#default #template))) #(97 'else' #(30 #(#default #template))) #(97 'export' #(59 #(#default #template))) #(97 'extends' #(66 #(#default #template))) #(97 'false' #(17 #(#default #template))) #(97 'finally' #(49 #(#default #template))) #(97 'for' #(87 #(#default #template))) #(97 'from' #(61 #(#default #template))) #(97 'function' #(48 #(#default #template))) #(97 'get' #(52 #(#default #template))) #(97 'if' #(88 #(#default #template))) #(97 'import' #(68 #(#default #template))) #(97 'in' #(19 #(#default #template))) #(97 'instanceof' #(21 #(#default #template))) #(97 'let' #(81 #(#default #template))) #(97 'new' #(42 #(#default #template))) #(97 'null' #(60 #(#default #template))) #(97 'of' #(84 #(#default #template))) #(97 'return' #(86 #(#default #template))) #(97 'set' #(55 #(#default #template))) #(97 'static' #(69 #(#default #template))) #(97 'super' #(43 #(#default #template))) #(97 'switch' #(58 #(#default #template))) #(97 'target' #(46 #(#default #template))) #(97 'this' #(31 #(#default #template))) #(97 'throw' #(57 #(#default #template))) #(97 'true' #(63 #(#default #template))) #(97 'try' #(56 #(#default #template))) #(97 'typeof' #(37 #(#default #template))) #(97 'var' #(91 #(#default #template))) #(97 'void' #(36 #(#default #template))) #(97 'while' #(90 #(#default #template))) #(97 'with' #(74 #(#default #template))) #(97 'yield' #(67 #(#default #template))) #(98 'as' #(62 #(#default #template))) #(98 'break' #(83 #(#default #template))) #(98 'case' #(64 #(#default #template))) #(98 'catch' #(50 #(#default #template))) #(98 'class' #(65 #(#default #template))) #(98 'const' #(82 #(#default #template))) #(98 'continue' #(85 #(#default #template))) #(98 'debugger' #(47 #(#default #template))) #(98 'default' #(54 #(#default #template))) #(98 'delete' #(38 #(#default #template))) #(98 'do' #(89 #(#default #template))) #(98 'else' #(30 #(#default #template))) #(98 'export' #(59 #(#default #template))) #(98 'extends' #(66 #(#default #template))) #(98 'false' #(17 #(#default #template))) #(98 'finally' #(49 #(#default #template))) #(98 'for' #(87 #(#default #template))) #(98 'from' #(61 #(#default #template))) #(98 'function' #(48 #(#default #template))) #(98 'get' #(52 #(#default #template))) #(98 'if' #(88 #(#default #template))) #(98 'import' #(68 #(#default #template))) #(98 'in' #(19 #(#default #template))) #(98 'instanceof' #(21 #(#default #template))) #(98 'let' #(81 #(#default #template))) #(98 'new' #(42 #(#default #template))) #(98 'null' #(60 #(#default #template))) #(98 'of' #(84 #(#default #template))) #(98 'return' #(86 #(#default #template))) #(98 'set' #(55 #(#default #template))) #(98 'static' #(69 #(#default #template))) #(98 'super' #(43 #(#default #template))) #(98 'switch' #(58 #(#default #template))) #(98 'target' #(46 #(#default #template))) #(98 'this' #(31 #(#default #template))) #(98 'throw' #(57 #(#default #template))) #(98 'true' #(63 #(#default #template))) #(98 'try' #(56 #(#default #template))) #(98 'typeof' #(37 #(#default #template))) #(98 'var' #(91 #(#default #template))) #(98 'void' #(36 #(#default #template))) #(98 'while' #(90 #(#default #template))) #(98 'with' #(74 #(#default #template))) #(98 'yield' #(67 #(#default #template))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
JSScanner >> emptySymbolTokenId [
	^ 270
]

{ #category : #generated }
JSScanner >> errorTokenId [
	^ 271
]

{ #category : #testing }
JSScanner >> hasNewlineBetween: startIndex and: endIndex [
	| position |
	position := stream position.
	[ stream position: startIndex.
	[ stream position <= endIndex and: [ stream atEnd not ] ]
		whileTrue: [ | char |
			char := stream next.
			(char == Character cr or: [ char == Character lf ])
				ifTrue: [ ^ true ] ] ]
		ensure: [ stream position: position ].
	^ false
]

{ #category : #generated }
JSScanner >> identifierId [
	^ 97
]

{ #category : #generated }
JSScanner >> identifierNameId [
	^ 98
]

{ #category : #generated }
JSScanner >> regular_expressionId [
	^ 102
]

{ #category : #generated }
JSScanner >> rightBraceId [
	^ 95
]

{ #category : #generated }
JSScanner >> scan1 [
	self recordMatch: #(7).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(16) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan10 [
	self recordMatch: #(100).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan11 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan10 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan11 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ])
				ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	^ self scan9
]

{ #category : #generated }
JSScanner >> scan12 [
	self recordMatch: #(11).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan13 [
	self recordMatch: #(40).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan14 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan15 [
	self recordMatch: #(44).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(26) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan16 [
	[ self recordMatch: #(101).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan17 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(101).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(101).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18 [
	self recordMatch: #(93).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan25 ].
	^ self scan18X3
]

{ #category : #generated }
JSScanner >> scan18X1 [
	self recordMatch: #(94).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $.)
						or: [ (currentCharacter between: $0 and: $Z)
								or: [ currentCharacter >= $] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18X2 [
	[ self recordMatch: #(96).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan18X3 [
	currentCharacter == $/
		ifTrue:
			[ ^ self scan18X2 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan18X1 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.)
								or: [ (currentCharacter between: $0 and: $<)
										or: [ (currentCharacter between: $> and: $Z)
												or: [ currentCharacter >= $] ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan19 [
	[ self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $.)
						or: [ (currentCharacter between: $0 and: $Z)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan2 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan20 [
	self recordMatch: #(102).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan22 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan21 [
	[ self recordMatch: #(102).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan22 ].
	currentCharacter isAlphaNumeric
		or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan22 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan21 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan23 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	currentCharacter == $]
		ifTrue: [ ^ self scan19 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan24 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan25 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ ^ self recordAndReportMatch: #(96) ].
			^ self scan25 ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan26 [
	self recordMatch: #(101).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan27 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(101).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(101).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(101).
					self step.
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan27 [
	[ self recordMatch: #(101).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan28 [
	self recordMatch: #(2).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(4).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(73) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan29 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(20).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(22) ].
			^ self reportLastMatch ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan3 [
	self recordMatch: #(100).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan30 [
	self recordMatch: #(5).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(3).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(72) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(1).
					self step.
					currentCharacter == $=
						ifTrue: [ ^ self recordAndReportMatch: #(70) ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan31 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(78) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan32 [
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $?
		ifTrue: [ self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(103) ].
			^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan35 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	^ self scan33
]

{ #category : #generated }
JSScanner >> scan33 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan35 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan34 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	^ self scan33
]

{ #category : #generated }
JSScanner >> scan35 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan36 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103 107) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan37 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103 107) ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(104).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(107) ].
			^ self scan39 ].
	^ self scan36
]

{ #category : #generated }
JSScanner >> scan38 [
	self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(107).
			self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan34 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan35 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(103) ].
			^ self scan33 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan39 ].
	^ self scan36
]

{ #category : #generated }
JSScanner >> scan39 [
	[ self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan4 [
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan3 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan4 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ currentCharacter >= $] ] ] ])
				ifTrue: [ ^ self scan2 ].
			^ self reportLastMatch ].
	^ self scan2
]

{ #category : #generated }
JSScanner >> scan40 [
	self recordMatch: #(14).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan41 [
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	true ] whileTrue
]

{ #category : #generated }
JSScanner >> scan42 [
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	^ self scan41
]

{ #category : #generated }
JSScanner >> scan43 [
	self step.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan41 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan5 [
	[ self recordMatch: #(97 98).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan6 ].
	currentCharacter isAlphaNumeric
		or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan6 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan5 ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan7 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan8 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scan9 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan11 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForToken [
	scope == #template
		ifTrue:
			[ ^ self scanForTokenX1 ].
	scope == #default
		ifTrue: [ self step.
			currentCharacter == $!
				ifTrue: [ ^ self scan1 ].
			currentCharacter == $"
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $%
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $&
				ifTrue: [ ^ self scan8 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan9 ].
			currentCharacter == $(
				ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			currentCharacter == $)
				ifTrue: [ ^ self recordAndReportMatch: #(33) ].
			currentCharacter == $*
				ifTrue: [ ^ self scan12 ].
			currentCharacter == $+
				ifTrue: [ ^ self scan13 ].
			currentCharacter == $,
				ifTrue: [ ^ self recordAndReportMatch: #(27) ].
			currentCharacter == $-
				ifTrue: [ ^ self scan14 ].
			currentCharacter == $.
				ifTrue: [ ^ self scan15 ].
			currentCharacter == $/
				ifTrue: [ ^ self scan18 ].
			currentCharacter == $0
				ifTrue: [ ^ self scan26 ].
			currentCharacter == $:
				ifTrue: [ ^ self recordAndReportMatch: #(29) ].
			currentCharacter == $;
				ifTrue: [ ^ self recordAndReportMatch: #(92) ].
			currentCharacter == $<
				ifTrue: [ ^ self scan28 ].
			currentCharacter == $=
				ifTrue: [ ^ self scan29 ].
			currentCharacter == $>
				ifTrue: [ ^ self scan30 ].
			currentCharacter == $?
				ifTrue: [ ^ self recordAndReportMatch: #(53) ].
			currentCharacter == $[
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			currentCharacter == $\
				ifTrue: [ ^ self scan6 ].
			currentCharacter == $]
				ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			currentCharacter == $^
				ifTrue: [ ^ self scan31 ].
			currentCharacter == $`
				ifTrue: [ ^ self scan32 ].
			currentCharacter == ${
				ifTrue: [ ^ self recordAndReportMatch: #(28) ].
			currentCharacter == $|
				ifTrue: [ ^ self scan40 ].
			currentCharacter == $}
				ifTrue: [ ^ self recordAndReportMatch: #(95) ].
			currentCharacter == $~
				ifTrue: [ ^ self recordAndReportMatch: #(12) ].
			currentCharacter isDigit
				ifTrue: [ ^ self scan27 ].
			currentCharacter isSeparator
				ifTrue:
					[ ^ self scanForTokenX2 ].
			(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
				ifTrue: [ ^ self scan5 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $!
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $%
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $&
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $*
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $+
		ifTrue: [ ^ self scan13 ].
	^ self scanForTokenX1X4
]

{ #category : #generated }
JSScanner >> scanForTokenX1X1 [
	self recordMatch: #(95).
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	^ self scan41
]

{ #category : #generated }
JSScanner >> scanForTokenX1X2 [
	[ self recordMatch: #(99).
	self step.
	currentCharacter isSeparator ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1X3 [
	currentCharacter == $\
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $^
		ifTrue: [ ^ self scan31 ].
	currentCharacter == $`
		ifTrue: [ ^ self scan32 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $|
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan27 ].
	currentCharacter isSeparator
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> scanForTokenX1X4 [
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $-
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $0
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(92) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $=
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $>
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self scanForTokenX1X3
]

{ #category : #generated }
JSScanner >> scanForTokenX2 [
	[ self recordMatch: #(99).
	self step.
	currentCharacter isSeparator ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
JSScanner >> semicolonId [
	^ 92
]

{ #category : #generated }
JSScanner >> slashEqualId [
	^ 94
]

{ #category : #generated }
JSScanner >> slashId [
	^ 93
]

{ #category : #generated }
JSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment nil nil #whitespace nil nil nil nil nil nil nil #patternToken)
]
