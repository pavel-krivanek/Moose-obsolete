Class {
	#name : #StParser,
	#superclass : #SmaCCParser,
	#category : #SmaCC_Smalltalk_Parser
}

{ #category : #generated-accessing }
StParser class >> cacheId [
	^'2017-11-29T08:31:09.264146-06:00'
]

{ #category : #generated }
StParser class >> definitionComment [
"<name>
	: (<isLetter> | \_) (<isLetter> | [\d\_]) *
	;
<number>
	: \d
	;
<negativeNumber>
	: \- <number>
	;
<string>
	: \'  [^\']* \' (\' [^\']* \')*
	;
<keyword>
	: <name> \:
	;
<multikeyword>
	: <name> \: (<name> \: )+
	;
<binarySymbol>
	: [\~\-\!\@\%\&\*\+\=\\\|\?\/\>\<\,] [\~\!\@\%\&\*\+\=\\\|\?\/\>\<\,]?
	;
<whitespace>
	: <isSeparator>+
	;
<comment>
	: \"" [^\""]* \""
	;
<dottedName>
	: <name> (\. <name>)+
	;
<character>
	: \$ .
	;
<variableAssignment>
	: <name> \: \=
	;
<anyChar>
	:  .
	; # For VW literal arrays that handle #(;) -> #(#';')

%id <number> <negativeNumber> <name> <binarySymbol>;
%start SequenceNode ;

Method
	: <name> MethodSequenceNode 
			{(RBMethodNode 
				selector: '1' value asSymbol 
				arguments: #() 
				body: '2' last) 
					""tags: '2' first; ""
					yourself}
	| BinaryMethodName MethodSequenceNode 
			{(RBMethodNode 
				selector: '1' first 
				arguments: '1' last 
				body: '2' last) 
					""tags: '2' first; ""
					yourself}
	| KeywordMethodName MethodSequenceNode 
			{(RBMethodNode 
				selector: '1' first contents asSymbol 
				arguments: '1' last 
				body: '2' last) 
					""tags: '2' first; ""
					yourself}
	;
BinaryMethodName
	: <binarySymbol> Variable 
			{Array with: '1' value asSymbol with: (Array with: '2')}
	;
KeywordMethodName
	: <keyword> Variable 
			{| stream | 
			stream := WriteStream on: (String new: 30). 
			stream nextPutAll: '1' value. 
			Array with: stream with: (OrderedCollection with: '2')}
	| KeywordMethodName <keyword> Variable 
			{'1' first nextPutAll: '2' value. 
			'1' last add: '3'. 
			'1'}
	;
Primitives
	: 		{OrderedCollection new}
	| Primitives ""<"" PrimitiveMessageSend "">"" 
			{'1' 
				add: ('2' startPosition to: '4' startPosition); 
				yourself}
	;
PrimitiveMessageSend
	:
	| PrimitiveMessageSend <keyword> 
			{nil}
	| PrimitiveMessageSend Literal 
			{nil}
	| PrimitiveMessageSend ""("" 
			{nil}
	| PrimitiveMessageSend "")"" 
			{nil}
	| PrimitiveMessageSend ""{"" 
			{nil}
	| PrimitiveMessageSend ""}"" 
			{nil}
	| PrimitiveMessageSend "";"" 
			{nil}
	| PrimitiveMessageSend ""."" 
			{nil}
	| PrimitiveMessageSend <name> 
			{nil}
	| PrimitiveMessageSend <binarySymbol> 
			{nil}
	;
MethodSequenceNode
	: Primitives ""|"" TemporaryVariables ""|"" Primitives Statements 
			{Array with: ('1' addAll: '5'; yourself) with: (RBSequenceNode temporaries: '3' statements: '6')}
	| Primitives ""||"" Primitives Statements 
			{Array with: ('1' addAll: '3'; yourself) with: (RBSequenceNode temporaries: #() statements: '4')}
	| Primitives Statements 
			{Array with: '1' with: (RBSequenceNode temporaries: #() statements: '2')}
	;
SequenceNode
	: Temporaries Statements 
			{RBSequenceNode temporaries: '1' statements: '2'}
	;
Temporaries
	: 		{#()}
	| ""||""
			{#()}
	| ""|"" TemporaryVariables ""|"" 
			{'2'}
	;
TemporaryVariables
	: 		{OrderedCollection new}
	| TemporaryVariables Variable 
			{'1' 
				add: '2'; 
				yourself}
	;
Statements
	: 		{OrderedCollection new}
	| StatementList OptionalPeriod
			{#liftFirstValue:}
	| StatementList ""."" ""^"" Expression OptionalPeriod
			{'1' 
				add: (RBReturnNode value: '4'); 
				yourself}
	| ""^"" Expression OptionalPeriod
			{OrderedCollection with: (RBReturnNode value: '2')}
	;
OptionalPeriod
	: 
	| "".""
	;
StatementList
	: Expression
	| StatementList ""."" Expression 
			{'1' 
				add: '3'; 
				yourself}
	;
Block
	: ""["" BlockArgs ""|"" SequenceNode ""]"" 
			{RBBlockNode arguments: '2' body: '4'}
	| ""["" SequenceNode ""]"" 
			{RBBlockNode body: '2'}
	| ""["" BlockArgs ""]"" 
			{RBBlockNode arguments: '2' body: (RBSequenceNode statements: #())}
	| ""["" BlockArgs ""||"" TemporaryVariables ""|"" Statements ""]"" 
			{RBBlockNode arguments: '2' body: (RBSequenceNode temporaries: '4' statements: '6')}
	;
BlockArgs
	: "":"" Variable 
			{OrderedCollection with: '2'}
	| BlockArgs "":"" Variable 
			{'1' 
				add: '3'; 
				yourself}
	;
Expression
	: Variable "":="" Expression 
			{RBAssignmentNode variable: '1' value: '3'}
	| Cascade 
			{#liftFirstValue:}
	;
Cascade
	: MessageSend CascadeList 
			{| messages |
			'2' isEmpty ifTrue: [^'1'].
			messages := OrderedCollection new: '2' size + 1.
			messages add: '1'.
			'2' do: [:each | messages add: (RBMessageNode receiver: '1' receiver selector: each first contents asSymbol arguments: each last)].
			RBCascadeNode messages: messages}
	| Primary 
			{#liftFirstValue:}
	;
MessageSend
	: KeywordMessageSend 
			{#liftFirstValue:}
	| BinaryMessageSend 
			{#liftFirstValue:}
	| UnaryMessageSend 
			{#liftFirstValue:}
	;
CascadeList
	: 		{OrderedCollection new}
	| CascadeList "";"" SimpleMessage 
			{'1' 
				add: '3'; 
				yourself}
	;
SimpleMessage
	: UnaryMessage 
			{#liftFirstValue:}
	| BinaryMessage 
			{#liftFirstValue:}
	| KeywordMessage 
			{#liftFirstValue:}
	;
KeywordMessageSend
	: BinaryMessageSend KeywordMessage 
			{#createMessageNodeFrom:}
	| UnaryMessageSend KeywordMessage 
			{#createMessageNodeFrom:}
	| Primary KeywordMessage 
			{#createMessageNodeFrom:}
	;
KeywordMessage
	: <keyword> KeywordArgument 
			{| stream | 
			stream := WriteStream on: (String new: 30). 
			stream nextPutAll: '1' value. 
			Array with: stream with: (OrderedCollection with: '2')}
	| KeywordMessage <keyword> KeywordArgument 
			{'1' first nextPutAll: '2' value. 
			'1' last add: '3'. 
			'1'}
	;
KeywordArgument
	: BinaryMessageSend 
			{#liftFirstValue:}
	| UnaryMessageSend 
			{#liftFirstValue:}
	| Primary 
			{#liftFirstValue:}
	;
BinaryMessageSend
	: BinaryMessageSend BinaryMessage 
			{#createMessageNodeFrom:}
	| UnaryMessageSend BinaryMessage 
			{#createMessageNodeFrom:}
	| Primary BinaryMessage 
			{#createMessageNodeFrom:} 
	;
BinaryMessage 
	: <binarySymbol> BinaryArgument 
			{Array with: (ReadStream on: '1' value) with: (Array with: '2')}
	;
BinaryArgument
	: UnaryMessageSend 
			{#liftFirstValue:}
	| Primary 
			{#liftFirstValue:}
	;
UnaryMessageSend 
	: UnaryMessageSend UnaryMessage 
			{#createMessageNodeFrom:}
	| Primary UnaryMessage 
			{#createMessageNodeFrom:}
	;
UnaryMessage 
	: <name> 
			{Array with: (ReadStream on: '1' value) with: #()}
	;
Primary
	: ""("" Expression "")"" 
			{#liftSecondValue:}
	| Literal 
			{RBLiteralNode value: '1'}
	| Variable 
			{#liftFirstValue:}
	| Block 
			{#liftFirstValue:}
	;
Variable
	: <name> 
			{RBVariableNode named: '1' value}
	| <dottedName> 
			{RBVariableNode named: '1' value}
	;
Literal
	: ""true"" 
			{true}
	| ""false"" 
			{false}
	| ""nil"" 
			{nil}
	| <number> 
			{'1' value}
	| <negativeNumber> 
			{'1' value}
	| <character> 
			{'1' value at: 2}
	| <string> 
			{('1' value copyFrom: 2 to: '1' value size - 1) copyReplaceAll: '''''' with: ''''}
	|  ""#"" <string> 
			{(('2' value copyFrom: 2 to: '2' value size - 1) copyReplaceAll: '''''' with: '''') asSymbol}
	| ""#"" <name> 
			{'2' value asSymbol}
	| ""#"" <binarySymbol> 
			{'2' value asSymbol}
	| ""#"" <keyword> 
			{'2' value asSymbol}
	| ""#"" <multikeyword> 
			{'2' value asSymbol}
	| ""#"" ""["" ByteArray ""]"" 
			{'3' contents}
	| ""#"" ""("" Array "")"" 
			{'3' contents}
	| ""#"" ""{"" <name> ""}"" 
			{'3' value asQualifiedReference}
	| ""#"" ""{"" <dottedName> ""}"" 
			{'3' value asQualifiedReference}
	;
ByteArray
	: 		{WriteStream on: ByteArray new}
	| ByteArray <number> 
			{'1' 
				nextPut: '2' value; 
				yourself}
	;
Array
	: 		{WriteStream on: Array new}
	| Array ArrayLiteral 
			{'1' 
				nextPut: '2'; 
				yourself} 
	| Array <name> "":="" 
			{'2' stopPosition + 1 = '3' startPosition 
				ifTrue: ['1' nextPut: ('2' value, ':') asSymbol] 
				ifFalse: ['1' nextPut: '2' value asSymbol; nextPut: #':']. 
			self position: '3' startPosition. 
			currentToken := nil. 
			'1'}
	;
ArrayLiteral
	: Literal 
			{#liftFirstValue:}
	| <name> 
			{'1' value asSymbol}
	| <binarySymbol> 
			{'1' value asSymbol}
	| <keyword> 
			{'1' value asSymbol}
	| <multikeyword> 
			{'1' value asSymbol}
	| ""{"" <name> ""}"" 
			{'2' value asQualifiedReference}
	| ""{"" <dottedName> ""}"" 
			{'2' value asQualifiedReference}
	| ""("" Array "")"" 
			{'2' contents}
	| ""["" ByteArray ""]"" 
			{'2' contents}
	| <anyChar> 
			{'1' value asSymbol}
	| <dottedName> 
			{'1' value}
	;"
]

{ #category : #'file types' }
StParser class >> fileExtension [
	^ '.st'
]

{ #category : #'file types' }
StParser class >> fileExtensionType [
	^ 'Smalltalk source'
]

{ #category : #accessing }
StParser class >> parseExpression: aString [
	^ self
		simplifyExpression:
			(self parse: aString startingAt: self startingStateForSequenceNode)
]

{ #category : #accessing }
StParser class >> parseExpression: aString onError: aBlock [
	^ self
		simplifyExpression:
			(self
				parse: aString
				startingAt: self startingStateForSequenceNode
				onError: aBlock)
]

{ #category : #accessing }
StParser class >> parseMethod: aString [
	^ self parse: aString startingAt: self startingStateForMethod
]

{ #category : #accessing }
StParser class >> parseMethod: aString onError: aBlock [
	^ self
		parse: aString
		startingAt: self startingStateForMethod
		onError: aBlock
]

{ #category : #generated-accessing }
StParser class >> scannerClass [
	^StScanner
]

{ #category : #private }
StParser class >> simplifyExpression: aSequenceNode [
	^ (aSequenceNode statements size == 1
		and: [ aSequenceNode temporaries isEmpty ])
		ifTrue: [ aSequenceNode statements first ]
		ifFalse: [ aSequenceNode ]
]

{ #category : #generated }
StParser class >> startingStateForMethod [
	^ 1
]

{ #category : #generated }
StParser class >> startingStateForSequenceNode [
	^ 2
]

{ #category : #private }
StParser >> actionForCurrentToken [
	| ids action |
	ids := currentToken ids.
	1 to: ids size do:
		[ :i | 
		action := self actionFor: (ids at: i).
		(action bitAnd: self actionMask) = self errorAction
			ifFalse: [ ^ action ].
		(ids at: i) = scanner negativeNumberId
			ifTrue:
				[ currentToken := SmaCCToken
					value: '-'
					start: currentToken startPosition
					ids: (Array with: scanner binarySymbolId).
				self position: currentToken stopPosition - 1.
				^ self actionForCurrentToken ] ].
	^ self errorAction
]

{ #category : #private }
StParser >> createMessageNodeFrom: aCollection [
	^ RBMessageNode
		receiver: aCollection first
		selector: (aCollection at: 2) first contents asSymbol
		arguments: (aCollection at: 2) last
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForArray1: nodes [
	^ WriteStream on: Array new
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForArray2: nodes [
	^ (nodes at: 1)
		nextPut: (nodes at: 2);
		yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForArray3: nodes [
	(nodes at: 2) stopPosition + 1 = (nodes at: 3) startPosition
		ifTrue: [ (nodes at: 1) nextPut: ((nodes at: 2) value , ':') asSymbol ]
		ifFalse: [ (nodes at: 1)
				nextPut:
					(nodes at: 2) value asSymbol;
				nextPut: #':' ].
	self position:
		(nodes at: 3) startPosition.
	currentToken := nil.
	^ nodes at: 1
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForArrayLiteral2: nodes [
	^ (nodes at: 1) value asSymbol
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForArrayLiteral6: nodes [
	^ (nodes at: 2) value asQualifiedReference
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForArrayLiteral8: nodes [
	^ (nodes at: 2) contents
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBinaryMessage1: nodes [
	^ Array
		with: (ReadStream on: (nodes at: 1) value)
		with: (Array with: (nodes at: 2))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBinaryMethodName1: nodes [
	^ Array
		with: (nodes at: 1) value asSymbol
		with: (Array with: (nodes at: 2))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBlock1: nodes [
	^ RBBlockNode arguments: (nodes at: 2) body: (nodes at: 4)
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBlock2: nodes [
	^ RBBlockNode body: (nodes at: 2)
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBlock3: nodes [
	^ RBBlockNode
		arguments: (nodes at: 2)
		body: (RBSequenceNode statements: #())
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBlock4: nodes [
	^ RBBlockNode
		arguments: (nodes at: 2)
		body: (RBSequenceNode temporaries: (nodes at: 4) statements: (nodes at: 6))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForBlockArgs1: nodes [
	^ OrderedCollection with: (nodes at: 2)
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForByteArray1: nodes [
	^ WriteStream on: ByteArray new
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForByteArray2: nodes [
	^ (nodes at: 1)
		nextPut: (nodes at: 2) value;
		yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForCascade1: nodes [
	| messages |
	(nodes at: 2) isEmpty
		ifTrue: [ ^ nodes at: 1 ].
	messages := OrderedCollection new:
		(nodes at: 2) size + 1.
	messages add: (nodes at: 1).
	(nodes at: 2)
		do: [ :each | 
			messages
				add:
					(RBMessageNode
						receiver:
							(nodes at: 1) receiver
						selector: each first contents asSymbol
						arguments: each last) ].
	^ RBCascadeNode messages: messages
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForExpression1: nodes [
	^ RBAssignmentNode variable: (nodes at: 1) value: (nodes at: 3)
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForKeywordMethodName1: nodes [
	| stream |
	stream := WriteStream on: (String new: 30).
	stream nextPutAll:
		(nodes at: 1) value.
	^ Array with: stream with: (OrderedCollection with: (nodes at: 2))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForKeywordMethodName2: nodes [
	(nodes at: 1) first nextPutAll: (nodes at: 2) value.
	(nodes at: 1) last add: (nodes at: 3).
	^ nodes at: 1
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral14: nodes [
	^ (nodes at: 3) contents
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral15: nodes [
	^ (nodes at: 3) value asQualifiedReference
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral1: nodes [
	^ true
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral2: nodes [
	^ false
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral4: nodes [
	^ (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral6: nodes [
	^ (nodes at: 1) value at: 2
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral7: nodes [
	^ ((nodes at: 1) value copyFrom: 2 to: (nodes at: 1) value size - 1)
		copyReplaceAll: ''''''
		with: ''''
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral8: nodes [
	^ (((nodes at: 2) value copyFrom: 2 to: (nodes at: 2) value size - 1)
		copyReplaceAll: ''''''
		with: '''') asSymbol
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForLiteral9: nodes [
	^ (nodes at: 2) value asSymbol
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForMethod1: nodes [
	^ (RBMethodNode
		selector: (nodes at: 1) value asSymbol
		arguments: #()
		body:
			(nodes at: 2) last) yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForMethod2: nodes [
	^ (RBMethodNode
		selector: (nodes at: 1) first
		arguments: (nodes at: 1) last
		body:
			(nodes at: 2) last) yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForMethod3: nodes [
	^ (RBMethodNode
		selector: (nodes at: 1) first contents asSymbol
		arguments:
			(nodes at: 1) last
		body:
			(nodes at: 2) last) yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForMethodSequenceNode1: nodes [
	^ Array
		with:
			((nodes at: 1)
				addAll: (nodes at: 5);
				yourself)
		with: (RBSequenceNode temporaries: (nodes at: 3) statements: (nodes at: 6))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForMethodSequenceNode2: nodes [
	^ Array
		with:
			((nodes at: 1)
				addAll: (nodes at: 3);
				yourself)
		with: (RBSequenceNode temporaries: #() statements: (nodes at: 4))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForMethodSequenceNode3: nodes [
	^ Array
		with: (nodes at: 1)
		with: (RBSequenceNode temporaries: #() statements: (nodes at: 2))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForPrimary2: nodes [
	^ RBLiteralNode value: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForPrimitives1: nodes [
	^ OrderedCollection new
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForPrimitives2: nodes [
	^ (nodes at: 1)
		add: ((nodes at: 2) startPosition to: (nodes at: 4) startPosition);
		yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForSequenceNode1: nodes [
	^ RBSequenceNode temporaries: (nodes at: 1) statements: (nodes at: 2)
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForStatementList2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 3);
		yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForStatements3: nodes [
	^ (nodes at: 1)
		add: (RBReturnNode value: (nodes at: 4));
		yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForStatements4: nodes [
	^ OrderedCollection with: (RBReturnNode value: (nodes at: 2))
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForTemporaries1: nodes [
	^ #()
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForTemporaryVariables2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 2);
		yourself
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForUnaryMessage1: nodes [
	^ Array with: (ReadStream on: (nodes at: 1) value) with: #()
]

{ #category : #'generated-reduction actions' }
StParser >> reduceActionForVariable1: nodes [
	^ RBVariableNode named: (nodes at: 1) value
]

{ #category : #generated }
StParser >> reduceTable [
^#(
	#(37 0 #reduceActionForTemporaries1:) 
	#(63 0 #reduceActionForPrimitives1:) 
	#(35 0 #reduceActionForPrimitives1:) 
	#(37 1 #reduceActionForTemporaries1:) 
	#(36 0 #reduceActionForPrimitives1:) 
	#(67 2 #reduceActionForMethod1:) 
	#(56 1 #reduceActionForVariable1:) 
	#(47 2 #reduceActionForKeywordMethodName1:) 
	#(34 2 #reduceActionForBinaryMethodName1:) 
	#(67 2 #reduceActionForMethod2:) 
	#(67 2 #reduceActionForMethod3:) 
	#(68 1 #reduceActionForLiteral1:) 
	#(68 1 #reduceActionForLiteral2:) 
	#(68 1 #nil) 
	#(68 1 #reduceActionForLiteral4:) 
	#(68 1 #reduceActionForLiteral7:) 
	#(68 1 #reduceActionForLiteral6:) 
	#(59 2 #reduceActionForSequenceNode1:) 
	#(39 0 #reduceFor:) 
	#(38 1 #reduceFor:) 
	#(46 1 #liftFirstValue:) 
	#(40 1 #liftFirstValue:) 
	#(45 0 #reduceActionForPrimitives1:) 
	#(43 1 #liftFirstValue:) 
	#(44 1 #liftFirstValue:) 
	#(46 1 #reduceActionForPrimary2:) 
	#(33 0 #reduceFor:) 
	#(58 2 #reduceActionForMethodSequenceNode3:) 
	#(47 3 #reduceActionForKeywordMethodName2:) 
	#(37 3 #liftSecondValue:) 
	#(35 2 #reduceActionForTemporaryVariables2:) 
	#(61 0 #reduceActionForArray1:) 
	#(60 0 #reduceActionForByteArray1:) 
	#(68 2 #reduceActionForLiteral9:) 
	#(68 2 #reduceActionForLiteral8:) 
	#(39 1 #reduceFor:) 
	#(36 2 #liftFirstValue:) 
	#(43 2 #reduceActionForCascade1:) 
	#(51 1 #reduceActionForUnaryMessage1:) 
	#(49 2 #createMessageNodeFrom:) 
	#(48 2 #createMessageNodeFrom:) 
	#(66 2 #createMessageNodeFrom:) 
	#(46 3 #liftSecondValue:) 
	#(36 3 #reduceActionForStatements4:) 
	#(41 2 #reduceActionForBlockArgs1:) 
	#(42 3 #reduceActionForBlock3:) 
	#(42 3 #reduceActionForBlock2:) 
	#(38 3 #reduceActionForStatementList2:) 
	#(54 1 #liftFirstValue:) 
	#(53 2 #reduceActionForKeywordMethodName1:) 
	#(55 1 #liftFirstValue:) 
	#(52 2 #reduceActionForBinaryMessage1:) 
	#(40 3 #reduceActionForExpression1:) 
	#(33 2 #nil) 
	#(63 4 #reduceActionForPrimitives2:) 
	#(58 4 #reduceActionForMethodSequenceNode2:) 
	#(68 4 #reduceActionForLiteral15:) 
	#(68 4 #reduceActionForLiteral14:) 
	#(62 1 #reduceActionForArrayLiteral2:) 
	#(62 1 #reduceActionForLiteral4:) 
	#(61 2 #reduceActionForArray2:) 
	#(62 1 #liftFirstValue:) 
	#(60 2 #reduceActionForByteArray2:) 
	#(41 3 #reduceActionForStatementList2:) 
	#(45 3 #reduceActionForStatementList2:) 
	#(50 1 #liftFirstValue:) 
	#(53 3 #reduceActionForKeywordMethodName2:) 
	#(61 3 #reduceActionForArray3:) 
	#(42 5 #reduceActionForBlock1:) 
	#(36 5 #reduceActionForStatements3:) 
	#(58 6 #reduceActionForMethodSequenceNode1:) 
	#(62 3 #reduceActionForArrayLiteral6:) 
	#(62 3 #reduceActionForArrayLiteral8:) 
	#(42 7 #reduceActionForBlock4:)
	).
]

{ #category : #generated }
StParser >> symbolNames [
	^ #('"#"' '";"' '"{"' '")"' '"."' '"<"' '">"' '"}"' '"|"' '"("' '"true"' '"false"' '":="' '"nil"' '"||"' '"^"' '"["' '":"' '"]"' '<name>' '<number>' '<negativeNumber>' '<string>' '<keyword>' '<multikeyword>' '<binarySymbol>' '<whitespace>' '<comment>' '<dottedName>' '<character>' '<variableAssignment>' '<anyChar>' 'PrimitiveMessageSend' 'BinaryMethodName' 'TemporaryVariables' 'Statements' 'Temporaries' 'StatementList' 'OptionalPeriod' 'Expression' 'BlockArgs' 'Block' 'Cascade' 'MessageSend' 'CascadeList' 'Primary' 'KeywordMethodName' 'BinaryMessageSend' 'UnaryMessageSend' 'SimpleMessage' 'UnaryMessage' 'BinaryMessage' 'KeywordMessage' 'KeywordArgument' 'BinaryArgument' 'Variable' 'B e g i n' 'MethodSequenceNode' 'SequenceNode' 'ByteArray' 'Array' 'ArrayLiteral' 'Primitives' 'E O F' 'error' 'KeywordMessageSend' 'Method' 'Literal')
]

{ #category : #generated }
StParser >> transitionTable [
^#(
#[1 0 13 0 20 0 17 0 24 0 21 0 26 0 25 0 34 0 29 0 47 0 33 0 67] 
#[1 0 6 0 1 0 37 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 41 0 15 0 6 0 16 0 6 0 17 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 29 0 6 0 30 0 45 0 37 0 49 0 59 0 6 0 64] 
#[1 0 10 0 1 0 10 0 6 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 29 0 10 0 30 0 53 0 58 0 57 0 63 0 10 0 64] 
#[1 0 61 0 20 0 65 0 29 0 69 0 56] 
#[1 0 61 0 20 0 65 0 29 0 73 0 56] 
#[1 0 10 0 1 0 10 0 6 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 29 0 10 0 30 0 77 0 58 0 57 0 63 0 10 0 64] 
#[1 0 10 0 1 0 10 0 6 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 81 0 24 0 10 0 29 0 10 0 30 0 85 0 58 0 57 0 63 0 10 0 64] 
#[0 0 0 0 64] 
#[1 0 14 0 9 0 14 0 20 0 14 0 29 0 89 0 35] 
#[0 0 18 0 1 0 10 0 11 0 12 0 14 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 29 0 30 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 113 0 16 0 117 0 17 0 22 0 19 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 0 137 0 36 0 141 0 38 0 145 0 40 0 161 0 42 0 145 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 22 0 64 0 157 0 66 0 181 0 68] 
#[0 0 0 0 64] 
#[0 0 26 0 64] 
#[1 0 93 0 1 0 185 0 6 0 189 0 9 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 193 0 15 0 113 0 16 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 0 197 0 36 0 141 0 38 0 145 0 40 0 161 0 42 0 145 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 22 0 64 0 157 0 66 0 181 0 68] 
#[0 0 30 0 1 0 2 0 4 0 5 0 6 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26 0 29 0 30 0 64] 
#[0 0 30 0 1 0 2 0 4 0 5 0 6 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 26 0 29 0 30 0 64] 
#[0 0 34 0 1 0 6 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 17 0 20 0 21 0 22 0 23 0 24 0 29 0 30 0 64] 
#[0 0 38 0 1 0 6 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 17 0 20 0 21 0 22 0 23 0 29 0 30 0 64] 
#[0 0 42 0 64] 
#[1 0 61 0 20 0 65 0 29 0 201 0 56] 
#[0 0 46 0 64] 
#[1 0 205 0 9 0 61 0 20 0 65 0 29 0 209 0 56] 
#[1 0 213 0 3 0 217 0 10 0 221 0 17 0 225 0 20 0 229 0 23 0 233 0 24 0 237 0 25 0 241 0 26] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 0 245 0 40 0 161 0 42 0 245 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 157 0 66 0 181 0 68] 
#[0 0 50 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 54 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 58 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 0 249 0 40 0 161 0 42 0 249 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 157 0 66 0 181 0 68] 
#[1 0 6 0 1 0 37 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 41 0 15 0 6 0 16 0 6 0 17 0 253 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 29 0 6 0 30 0 45 0 37 1 1 0 41 1 5 0 59] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 74 0 19 0 64] 
#[1 1 9 0 5 0 78 0 19 1 13 0 39 0 78 0 64] 
#[0 0 82 0 5 0 19 0 64] 
#[0 0 86 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[0 0 90 0 4 0 5 0 19 0 64] 
#[1 0 94 0 2 0 94 0 4 0 94 0 5 0 94 0 19 1 17 0 45 0 94 0 64] 
#[1 0 98 0 4 0 98 0 5 0 98 0 19 1 21 0 20 1 25 0 24 1 29 0 26 1 33 0 51 1 37 0 52 1 41 0 53 0 98 0 64] 
#[1 0 102 0 2 0 102 0 4 0 102 0 5 0 102 0 19 1 25 0 24 1 29 0 26 1 45 0 52 1 49 0 53 0 102 0 64] 
#[1 0 102 0 2 0 102 0 4 0 102 0 5 0 102 0 19 1 21 0 20 1 25 0 24 1 29 0 26 1 53 0 51 1 57 0 52 1 61 0 53 0 102 0 64] 
#[1 0 86 0 4 0 86 0 5 1 65 0 13 0 86 0 19 0 86 0 20 0 86 0 24 0 86 0 26 0 86 0 64] 
#[0 0 102 0 2 0 4 0 5 0 19 0 64] 
#[0 0 106 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[1 0 110 0 1 0 110 0 2 0 110 0 3 0 110 0 4 0 110 0 5 0 110 0 7 0 110 0 8 0 110 0 10 0 110 0 11 0 110 0 12 0 110 0 14 0 110 0 20 0 110 0 21 0 110 0 22 0 110 0 23 0 110 0 24 0 110 0 26 0 110 0 30 1 69 0 33] 
#[1 0 14 0 9 0 14 0 20 0 14 0 29 1 73 0 35] 
#[1 0 10 0 1 0 10 0 6 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 14 0 10 0 16 0 10 0 17 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 29 0 10 0 30 1 77 0 63 0 10 0 64] 
#[0 0 114 0 64] 
#[0 0 118 0 1 0 6 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 17 0 20 0 21 0 22 0 23 0 24 0 29 0 30 0 64] 
#[0 0 122 0 1 0 10 0 11 0 12 0 14 0 16 0 17 0 19 0 20 0 21 0 22 0 23 0 29 0 30 0 64] 
#[0 0 126 0 9 0 20 0 29] 
#[1 1 81 0 20 1 85 0 29] 
#[1 0 130 0 1 0 130 0 3 0 130 0 4 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 14 0 130 0 17 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 29 0 130 0 30 0 130 0 32 1 89 0 61] 
#[1 0 134 0 19 0 134 0 21 1 93 0 60] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 1 97 0 4] 
#[1 1 101 0 5 0 78 0 19 1 105 0 39 0 78 0 64] 
#[1 0 61 0 20 0 65 0 29 1 109 0 56] 
#[1 1 113 0 9 1 117 0 15 1 121 0 18 1 125 0 19] 
#[0 1 129 0 19] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 1 133 0 16 0 117 0 17 0 146 0 19 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 1 137 0 40 0 161 0 42 1 137 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 146 0 64 0 157 0 66 0 181 0 68] 
#[0 0 150 0 19 0 64] 
#[1 1 141 0 2 0 154 0 4 0 154 0 5 0 154 0 19 0 154 0 64] 
#[0 0 158 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 1 145 0 42 1 145 0 46 1 149 0 48 1 153 0 49 1 157 0 54 1 145 0 56 0 181 0 68] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 1 165 0 42 1 165 0 46 1 169 0 49 1 173 0 55 1 165 0 56 0 181 0 68] 
#[0 0 162 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[0 0 166 0 2 0 4 0 5 0 19 0 24 0 26 0 64] 
#[1 0 170 0 2 0 170 0 4 0 170 0 5 0 170 0 19 1 177 0 24 0 170 0 64] 
#[0 0 166 0 2 0 4 0 5 0 19 0 24 0 26 0 64] 
#[1 0 170 0 2 0 170 0 4 0 170 0 5 0 170 0 19 1 177 0 24 0 170 0 64] 
#[0 0 162 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[0 0 166 0 2 0 4 0 5 0 19 0 24 0 26 0 64] 
#[1 0 170 0 2 0 170 0 4 0 170 0 5 0 170 0 19 1 177 0 24 0 170 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 1 181 0 40 0 161 0 42 1 181 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 157 0 66 0 181 0 68] 
#[1 0 93 0 1 1 185 0 2 1 189 0 3 1 193 0 4 1 197 0 5 1 201 0 7 1 205 0 8 1 209 0 10 0 101 0 11 0 105 0 12 0 109 0 14 1 213 0 20 0 121 0 21 0 125 0 22 0 129 0 23 1 217 0 24 1 221 0 26 0 133 0 30 1 225 0 68] 
#[1 1 229 0 9 0 61 0 20 0 65 0 29 0 209 0 56] 
#[1 0 93 0 1 0 185 0 6 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 113 0 16 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 1 233 0 36 0 141 0 38 0 145 0 40 0 161 0 42 0 145 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 22 0 64 0 157 0 66 0 181 0 68] 
#[0 1 237 0 8] 
#[0 1 241 0 8] 
#[1 0 93 0 1 1 245 0 3 1 249 0 4 1 253 0 10 0 101 0 11 0 105 0 12 0 109 0 14 2 1 0 17 2 5 0 20 0 121 0 21 0 125 0 22 0 129 0 23 2 9 0 24 2 13 0 25 2 17 0 26 2 21 0 29 0 133 0 30 2 25 0 32 2 29 0 62 2 29 0 68] 
#[1 2 37 0 19 2 41 0 21] 
#[0 0 174 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[0 0 146 0 19 0 64] 
#[0 0 178 0 19 0 64] 
#[0 0 182 0 9 0 15 0 18 0 19] 
#[1 0 6 0 1 0 37 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 14 0 41 0 15 0 6 0 16 0 6 0 17 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 29 0 6 0 30 0 45 0 37 2 45 0 59] 
#[1 0 14 0 9 0 14 0 20 0 14 0 29 2 49 0 35] 
#[1 0 61 0 20 0 65 0 29 2 53 0 56] 
#[0 0 186 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[0 0 190 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 2 57 0 40 0 161 0 42 2 57 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 157 0 66 0 181 0 68] 
#[0 0 194 0 5 0 19 0 64] 
#[1 1 21 0 20 1 25 0 24 1 29 0 26 2 61 0 50 2 61 0 51 2 61 0 52 2 73 0 53] 
#[1 0 198 0 2 0 198 0 4 0 198 0 5 0 198 0 19 1 21 0 20 0 198 0 24 1 29 0 26 1 33 0 51 1 37 0 52 0 198 0 64] 
#[1 0 198 0 2 0 198 0 4 0 198 0 5 0 198 0 19 0 198 0 24 1 29 0 26 1 45 0 52 0 198 0 64] 
#[1 0 198 0 2 0 198 0 4 0 198 0 5 0 198 0 19 1 21 0 20 0 198 0 24 1 29 0 26 1 53 0 51 1 57 0 52 0 198 0 64] 
#[0 0 202 0 2 0 4 0 5 0 19 0 24 0 64] 
#[0 0 86 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[1 0 206 0 2 0 206 0 4 0 206 0 5 0 206 0 19 1 21 0 20 0 206 0 24 0 206 0 26 1 33 0 51 0 206 0 64] 
#[1 0 206 0 2 0 206 0 4 0 206 0 5 0 206 0 19 1 21 0 20 0 206 0 24 0 206 0 26 1 53 0 51 0 206 0 64] 
#[0 0 210 0 2 0 4 0 5 0 19 0 24 0 26 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 1 145 0 42 1 145 0 46 1 149 0 48 1 153 0 49 2 77 0 54 1 145 0 56 0 181 0 68] 
#[0 0 214 0 4 0 5 0 19 0 64] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 222 0 1 0 6 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 17 0 20 0 21 0 22 0 23 0 29 0 30 0 64] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 20 0 21 0 22 0 23 0 24 0 26 0 30] 
#[1 0 10 0 1 0 10 0 6 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 14 0 10 0 16 0 10 0 17 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 29 0 10 0 30 2 81 0 63 0 10 0 64] 
#[0 0 226 0 64] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[1 2 85 0 20 2 89 0 29] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[1 0 130 0 1 0 130 0 3 0 130 0 4 0 130 0 10 0 130 0 11 0 130 0 12 0 130 0 14 0 130 0 17 0 130 0 20 0 130 0 21 0 130 0 22 0 130 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 29 0 130 0 30 0 130 0 32 2 93 0 61] 
#[1 0 134 0 19 0 134 0 21 2 97 0 60] 
#[1 0 238 0 1 0 238 0 3 0 238 0 4 0 238 0 10 0 238 0 11 0 238 0 12 2 101 0 13 0 238 0 14 0 238 0 17 0 238 0 20 0 238 0 21 0 238 0 22 0 238 0 23 0 238 0 24 0 238 0 25 0 238 0 26 0 238 0 29 0 238 0 30 0 238 0 32] 
#[0 0 238 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 238 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 238 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 242 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 238 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 246 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 250 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 10 0 11 0 12 0 14 0 17 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32 0 64] 
#[0 0 254 0 19 0 21] 
#[0 2 105 0 19] 
#[1 2 109 0 9 0 61 0 20 0 65 0 29 0 209 0 56] 
#[0 1 2 0 9 0 15 0 18 0 19] 
#[1 1 101 0 5 0 78 0 19 2 113 0 39 0 78 0 64] 
#[0 1 6 0 2 0 4 0 5 0 19 0 64] 
#[0 1 10 0 2 0 4 0 5 0 19 0 64] 
#[0 1 10 0 2 0 4 0 5 0 19 0 64] 
#[1 1 10 0 2 1 10 0 4 1 10 0 5 1 10 0 19 1 177 0 24 1 10 0 64] 
#[0 1 14 0 2 0 4 0 5 0 19 0 24 0 64] 
#[1 0 93 0 1 0 185 0 6 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 113 0 16 0 117 0 17 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 2 117 0 36 0 141 0 38 0 145 0 40 0 161 0 42 0 145 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 22 0 64 0 157 0 66 0 181 0 68] 
#[0 2 121 0 8] 
#[0 2 125 0 8] 
#[1 0 93 0 1 1 245 0 3 2 129 0 4 1 253 0 10 0 101 0 11 0 105 0 12 0 109 0 14 2 1 0 17 2 5 0 20 0 121 0 21 0 125 0 22 0 129 0 23 2 9 0 24 2 13 0 25 2 17 0 26 2 21 0 29 0 133 0 30 2 25 0 32 2 29 0 62 2 29 0 68] 
#[1 2 133 0 19 2 41 0 21] 
#[0 1 18 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 1 22 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64] 
#[1 0 93 0 1 0 97 0 10 0 101 0 11 0 105 0 12 0 109 0 14 0 113 0 16 0 117 0 17 0 22 0 19 0 61 0 20 0 121 0 21 0 125 0 22 0 129 0 23 0 65 0 29 0 133 0 30 2 137 0 36 0 141 0 38 0 145 0 40 0 161 0 42 0 145 0 43 0 157 0 44 0 161 0 46 0 165 0 48 0 169 0 49 0 173 0 56 0 157 0 66 0 181 0 68] 
#[0 1 26 0 19 0 64] 
#[0 1 30 0 64] 
#[0 1 34 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 1 34 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 1 38 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 1 38 0 1 0 3 0 4 0 10 0 11 0 12 0 14 0 17 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 29 0 30 0 32] 
#[0 2 141 0 19] 
#[0 1 42 0 2 0 4 0 5 0 19 0 20 0 24 0 26 0 64]
	).
]
