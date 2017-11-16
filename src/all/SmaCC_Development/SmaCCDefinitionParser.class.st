"
SmaCCDefinitionParser is a SmaCCParser that parses a parser's definition.

Instance Variables:
	grammar	<SmaCCGrammar>	we create the grammar object from the parser's definition
	scannerDefinition	<SmaCCScannerDefinition>	we also create the scanner definition object from the parser's definition
"
Class {
	#name : #SmaCCDefinitionParser,
	#superclass : #SmaCCParser,
	#instVars : [
		'scannerDefinition',
		'grammar',
		'defaultClasses'
	],
	#category : 'SmaCC_Development'
}

{ #category : #generated-accessing }
SmaCCDefinitionParser class >> cacheId [
	^'2016-10-24T21:20:38.203124-05:00'
]

{ #category : #generated }
SmaCCDefinitionParser class >> definitionComment [
"%states default scanner directives parser;

directives <states>
	: states 
	;
directives <excludes> 
	: excludes 
	;
directives <root> 
	: root 
	;
directives <hierarchy> 
	: hierarchy 
	;
directives <attributes>
	: attributes
	;
directives <prefix> 
	: prefix 
	;
directives <suffix> 
	: suffix 
	;
directives <left> 
	: left 
	;
directives <right> 
	: right 
	;
directives <nonassoc> 
	: nonassoc 
	;
directives <id> 
	: id 
	;
directives <start> 
	: start 
	;
directives <glr>
	: glr
	;
directives <ignorecase>
	: ignorecase
	;
directives <ignorevariables>
	: ignore_variables
	;
directives <annotate_tokens>
	: annotate_tokens
	;
<name> 
	: (<isLetter> | _) (<isLetter> | _ | <isDigit>)*
	;
<directive> 
	: \%
	;
<whitespace>
	: \s+ 
	;
<tokenname>
	: \< <name> \>
	;
<symbolname>
	: <name>
	 ;
<keyword>
	: (\"" [^\""]* \"") + 
	;
<comment>
	: (\# [^\r\n]*) 
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<code>
	: \{ 
	;
<variablename>
	: \' <name> \' 
	;
<production>
	: \: (\: \=)? 
	;
<directive>
	: % 
	;
<semicolon>
	: \; 
	;
scanner <backslashcharacter>
	: \\ [^cx] 
	| \\ c [A-Z] 
	| \\ x [0-9A-Fa-f]{1,4}
	;
scanner <characterblock>
	: \[ ([^\]\\] | <backslashcharacter> )+ \] 
	;
scanner <repeat>
	: \{ [0-9]* \, [0-9]* \}
	;
scanner <character>
	: [^\ \t\v\\\r\n\{\(\[\.]
	; 
scanner <anycharacter>
	: \.
	;
parser <optionalLeft>
	: \[
	;
parser <optionalRight>
	: \] 
	;
parser <repeatLeft> 
	: \<\% 
	;
parser <repeatRight> 
	: \%\> 
	;
parser <classLeft> 
	: \{\{ 
	;
parser <classRight> 
	: \}\} 
	;

%id <code> <keyword> <symbolname> <tokenname> <variablename> <semicolon>
	<directive> <production> <classLeft> <classRight>;
%left	""|"";
%left ""("" <character> <backslashcharacter> <characterblock> <anycharacter> <tokenname> <symbolname> <directive>;
%left ""*"" ""+"" ""?"" <repeat> ;

File
	: Rules 
			{grammar 
				addExtraSymbols; 
				yourself}
	;
Rules
	: Rule
	| Rules Rule
	;
Rule 
	: ProductionRule 
			{grammar setStartSymbolIfNone: '1'}
	| DirectiveLine
	| RegexRule 
			{'1' states isEmpty ifTrue: ['1' addStates: scannerDefinition nonExcludeStates]}
	;
# Directives
DirectiveLine 
	: StartDirective <directive> Directive EndDirective <semicolon>
	;
Directive 
	: ExcludeStatesLine 
	| StatesLine
	| RootClassLine
	| SuperclassLine
	| AttributesLine
	| PrefixLine
	| SuffixLine
	| LeftLine 
	| RightLine 
	| NonAssociativeLine
	| IdMethodLine
	| StartLine 
	| GLR
	| IgnoreCase
	| IgnoredVariables
	| AnnotateTokens
	;
StartDirective 
	: 		{self state: #directives}
	;
EndDirective 
	: 		{self state: #default}
	;
StatesLine 
	: <states> States
	;
States 
	: 
	| States Symbol 
			{scannerDefinition addState: '2'}
	;
ExcludeStatesLine 
	: <excludes> ExcludeStates
	;
ExcludeStates 
:
	| ExcludeStates Symbol 
			{scannerDefinition addExcludeState: '2'}
	;
RootClassLine 
	: <root> <symbolname> 'root' 
			{(grammar classNamed: root value asSymbol) beRoot}
	;
SuperclassLine
	: <hierarchy> <symbolname> 'superclass' ""("" ClassList 'classes' "")""
			{classes do: [:each | (grammar classNamed: each) superclass: (grammar classNamed: superclass value asSymbol)]}
	;
AttributesLine
	: <attributes> <symbolname> 'aClass' ""("" IvarList 'ivars' "")""
			{(grammar classNamed: aClass value asSymbol)  extraAttributes: (ivars collect: [:each | SmaCCVariableDefinition variableName: each ])} ;
IvarList	
	:		{OrderedCollection new}
	| IvarList 'list' <symbolname> 'name'	
			{list add: name value; yourself} 
	;
ClassList 
	: 		{OrderedCollection new}
	| ClassList 'list' <symbolname> 'name' 
			{list 
				add: name value asSymbol; 
				yourself}
	;
PrefixLine
	: <prefix> <symbolname> 'prefix' 
			{grammar prefix: prefix value}
	;
SuffixLine
	: <suffix> <symbolname> 'suffix' 
			{grammar suffix: suffix value}
	;
LeftLine
	: <left> TokenList 'tokens' 
			{tokens 
				do: 
					[:each | 
					grammar 
						leftPrecedenceFor: each; 
						setOperatorPrecedenceFor: each to: scanner lineNumber].
			nil}
	;
RightLine
	: <right> TokenList 'tokens' 
			{tokens 
				do: 
					[:each | 
					grammar 
						rightPrecedenceFor: each; 
						setOperatorPrecedenceFor: each to: scanner lineNumber].
			nil}
	;
NonAssociativeLine
	: <nonassoc> TokenList 'tokens'
			{tokens 
				do: 
					[:each | 
					grammar 
						nonAssociativePrecedenceFor: each; 
						setOperatorPrecedenceFor: each to: scanner lineNumber].
			nil}
	;
TokenList
	: Term
	| TokenList Term
	;
IdMethodLine
	: <id> IdTokens 'tokens' 
			{tokens do: [:each | grammar makeTokenIdMethodFor: each]. nil}
	;
IdTokens
	: <tokenname> 
			{OrderedCollection with: '1' value}
	| IdTokens <tokenname> 
			{'1' 
				add: '2' value; 
				yourself}
	;
StartLine
	: <start> StartingTokens
	;
StartingTokens
	: <symbolname> 'symbol' 
			{grammar addStartingSymbol: (grammar nonTerminalSymbolNamed: symbol value)}
	| StartingTokens <symbolname> 'symbol' 
			{grammar addStartingSymbol: (grammar nonTerminalSymbolNamed: symbol value)}
	;
GLR
	: <glr>
			{grammar isGLR: true}
	;
IgnoredVariables
	: EndDirective <ignorevariables> IgnoredVariableList 'variables'
			{grammar ignoredVariables: variables}
	;
IgnoredVariableList
	: <symbolname> 'name'
			{OrderedCollection with: name value}
	| IgnoredVariableList 'variables' <symbolname> 'name'
			{variables add: name value.
			variables}
	;
IgnoreCase
	: <ignorecase>
			{grammar ignoreCase: true}
	;
AnnotateTokens
	: <annotate_tokens>
			{grammar annotateTokens: true}
	;
# Scanner
RegexRule 
	: StartRegex <tokenname> 'token' <production> Regex 'regex' EndRegex <semicolon>
			{| symbol |
			regex position: token startPosition. 
			scannerDefinition addToken: regex withName: token value. 
			symbol := grammar findSymbolNamed: token value ifAbsent: [nil].
			symbol notNil ifTrue: [symbol regularExpression: regex].
			regex}
	| Symbol 'state' RegexRule 'rule'
			{rule
				addState: state; 
				yourself}
	;
StartRegex
	: 		{self state: #scanner}
	;
EndRegex
	: 		{self state: #default}
	;
Symbol 
	: <symbolname> 
			{'1' value asSymbol}
	;
Regex
	: RegexTerm 
			{'1'}
	| Regex ""|"" Regex 
			{'1' | '3'}
	| Regex RegexTerm 
			{'1' , '2'}
	;
RegexTerm
	: <character> 
			{SmaCCCharacterRENode characters: '1' value}
	| <directive>
			{SmaCCCharacterRENode characters: '1' value}
	| <anycharacter> 
			{SmaCCCharacterRENode characters: self allCharacters}
	| <backslashcharacter> 
			{self nodeFor: (ReadStream on: ('1' value copyFrom: 2 to: '1' value size))} 
	| ""("" Regex "")"" 
			{'2'}
	| <characterblock> 
			{self parseCharacterBlock: '1'}
	| <tokenname> 
			{(scannerDefinition tokenNamed: '1' value ifAbsentPut: [self generateImplicitToken: '1']) copy}
	| <symbolname> 
			{SmaCCSequenceRENode nodes: ('1' value asOrderedCollection collect: [:each | SmaCCCharacterRENode characters: (String with: each)])}
	| RegexTerm ""*""	
			{'1' repeat}
	| RegexTerm ""+"" 
			{'1' repeatForAtLeast: 1}
	| RegexTerm ""?"" 
			{'1' repeatFor: 0 to: 1}
	| RegexTerm <repeat> 
			{| readStream start stop | 
			readStream := ReadStream on: ('2' value copyFrom: 2 to: '2' value size - 1). 
			start := readStream upTo: $,. 
			stop := readStream upToEnd.
			'1' repeatFor: (start isEmpty ifTrue: [0] ifFalse: [start asNumber]) to: (stop isEmpty ifTrue: [(1 bitShift: 31)] ifFalse: [stop asNumber])}
	;
# Parser 
ProductionRule
	: <symbolname> 'symbolName' StartProduction <production> ParserRules 'rules' EndProduction <semicolon>
			{| symbol | 
			symbol := grammar nonTerminalSymbolNamed: symbolName value. 
			rules do: [:each | symbol addProduction: each]. 
			self createDefaultClassesForSymbol: symbolName value.
			symbol}
	;
StartProduction
	: 		{self state: #parser}
	;
EndProduction
	: 		{self state: #default}
	;
ParserRules
	: ParserRules ""|"" ParserRule 
			{'1' 
				add: '3'; 
				yourself}
	| ParserRule
	;
ParserRule 
	: Terms 'rhs' 
			{rhs}
	| Terms 'rhs' <code> 'code' 
			{self verifyCodeToken: code for: rhs} 
	| Terms 'rhs' <classLeft> <symbolname> 'className' <classRight>
			{self createClass: className value asSymbol for: rhs}
	| Terms 'rhs' <classLeft> <classRight>
			{self createDefaultClassFor: rhs}
	;
Terms 
	: 		{grammar newRHS}
	| Terms 'rhs' Term 'term'
			{rhs 
				add: term; 
				yourself}	
	| Terms 'rhs' Term 'term' <variablename> 'variableNameToken'
			{rhs 
				add: term; 
				nameLastItem: (variableNameToken value copyFrom: 2 to: variableNameToken value size - 1); 
				yourself}	
	;
Term
	: <keyword> 
			{grammar keywordTerminalNamed: '1' value}
	| <tokenname>
			{grammar
				findSymbolNamed: '1' value
				ifAbsentAdd: 
					[| node symbol |
					symbol := grammar newTerminalSymbolNamed: '1' value.
					(scannerDefinition includesTokenNamed: '1' value) 
						ifTrue: [symbol regularExpression: (scannerDefinition tokenNamed: '1' value)]
						ifFalse:
							[node := SmaCCGrammar implicitToken: '1' value.
							node notNil
								ifTrue: 
									[node addStates: scannerDefinition nonExcludeStates.
									symbol regularExpression: node]].
					symbol]}
	| <symbolname> 
			{grammar nonTerminalSymbolNamed: '1' value}
	| ""error"" 
			{grammar errorSymbol}
	;"
]

{ #category : #generated-accessing }
SmaCCDefinitionParser class >> scannerClass [
	^SmaCCDefinitionScanner
]

{ #category : #generated }
SmaCCDefinitionParser class >> startingStateForFile [
	^ 1
]

{ #category : #private-strings }
SmaCCDefinitionParser >> allCharacters [
	^ SmaCCGrammar allCharacters
]

{ #category : #private-strings }
SmaCCDefinitionParser >> carriageReturnString [
	^ String with: (Character value: 13)
]

{ #category : #private }
SmaCCDefinitionParser >> charactersFor: aStream in: aToken [
	| characters char endCharacters |
	aStream atEnd
		ifTrue: [ self reportCharacterBlockErrorForToken: aToken ].
	char := aStream next.
	characters := char == $\
		ifTrue: [ (self nodeFor: aStream) characters ]
		ifFalse: [ OrderedCollection with: char ].
	(characters size = 1 and: [ aStream peekFor: $- ])
		ifFalse: [ ^ characters ].
	endCharacters := self charactersFor: aStream in: aToken.
	endCharacters size > 1
		ifTrue: [ self reportCharacterBlockErrorForToken: aToken ].
	^ (characters first asInteger to: endCharacters first asInteger)
		collect: [ :each | Character value: each ]
]

{ #category : #private }
SmaCCDefinitionParser >> createClass: aSymbol for: aSmaCCRHS [
	(grammar classNamed: aSymbol) addProduction: aSmaCCRHS.
	^ aSmaCCRHS
]

{ #category : #private }
SmaCCDefinitionParser >> createDefaultClassFor: aSmaCCRHS [
	defaultClasses add: aSmaCCRHS.
	^ aSmaCCRHS
]

{ #category : #private }
SmaCCDefinitionParser >> createDefaultClassesForSymbol: aString [
	| className index |
	className := aString capitalized.
	[ index := className indexOf: $_.
	index > 0 and: [ className size > 1 ] ]
		whileTrue:
			[ className := (className copyFrom: 1 to: index - 1)
				, (className copyFrom: index + 1 to: className size) capitalized ].
	className := className asSymbol.
	defaultClasses do: [ :each | self createClass: className for: each ].
	defaultClasses := OrderedCollection new
]

{ #category : #private-strings }
SmaCCDefinitionParser >> formFeedString [
	^ String with: (Character value: 12)
]

{ #category : #private }
SmaCCDefinitionParser >> generateImplicitToken: aSmaCCToken [
	| node |
	node := SmaCCGrammar implicitToken: aSmaCCToken value.
	node isNil
		ifTrue:
			[ currentToken := aSmaCCToken.
			self reportErrorMessage: 'Token not specified' ].
	^ node
]

{ #category : #initialize-release }
SmaCCDefinitionParser >> grammar: aSmaCCGrammar [
	grammar := aSmaCCGrammar.
	scannerDefinition := SmaCCScannerDefinition new.
	grammar scannerDefinition: scannerDefinition
]

{ #category : #private }
SmaCCDefinitionParser >> hexStringFrom: aStream [
	^ String with: (Character value: (self hexValueFrom: aStream))
]

{ #category : #private }
SmaCCDefinitionParser >> hexValueFrom: aStream [
	| char value count |
	count := value := 0.
	[ aStream atEnd not
		and:
			[ count < 4
				and:
					[ char := aStream peek.
					(char between: $0 and: $9)
						or: [ (char between: $A and: $F) or: [ char between: $a and: $f ] ] ] ] ]
		whileTrue:
			[ count := count + 1.
			value := value * 16 + aStream next digitValue ].
	^ value
]

{ #category : #initialize-release }
SmaCCDefinitionParser >> initialize [
	super initialize.
	self grammar: SmaCCGrammar new.
	defaultClasses := OrderedCollection new
]

{ #category : #testing }
SmaCCDefinitionParser >> isDigit: each [
	^ each between: $0 and: $9
]

{ #category : #testing }
SmaCCDefinitionParser >> isLetterOrDigit: each [
	^ (each between: $a and: $z)
		or:
			[ (each between: $A and: $Z)
				or: [ (each between: $0 and: $9) or: [ each == $_ ] ] ]
]

{ #category : #testing }
SmaCCDefinitionParser >> isWhitespace: each [
	^ self whitespaceValues includes: each asInteger
]

{ #category : #private-strings }
SmaCCDefinitionParser >> newlineString [
	^ String with: (Character value: 10)
]

{ #category : #private }
SmaCCDefinitionParser >> nodeFor: aStream [
	| block char |
	block := nil.
	char := aStream next.
	char == $f
		ifTrue: [ ^ SmaCCCharacterRENode characters: self formFeedString ].
	char == $n
		ifTrue: [ ^ SmaCCCharacterRENode characters: self newlineString ].
	char == $r
		ifTrue: [ ^ SmaCCCharacterRENode
				characters: self carriageReturnString ].
	char == $t
		ifTrue: [ ^ SmaCCCharacterRENode characters: self tabString ].
	char == $v
		ifTrue: [ ^ SmaCCCharacterRENode characters: self verticalTabString ].
	char == $c
		ifTrue:
			[ ^ SmaCCCharacterRENode
				characters:
					(String with: (Character value: aStream next asInteger - $A asInteger)) ].
	char == $x
		ifTrue: [ ^ SmaCCCharacterRENode
				characters: (self hexStringFrom: aStream) ].
	char == $d
		ifTrue: [ block := [ :each | self isDigit: each ] ].
	char == $D
		ifTrue: [ block := [ :each | (self isDigit: each) not ] ].
	char == $s
		ifTrue: [ block := [ :each | self isWhitespace: each ] ].
	char == $S
		ifTrue: [ block := [ :each | (self isWhitespace: each) not ] ].
	char == $w
		ifTrue: [ block := [ :each | self isLetterOrDigit: each ] ].
	char == $W
		ifTrue: [ block := [ :each | (self isLetterOrDigit: each) not ] ].
	block isNil
		ifTrue: [ ^ SmaCCCharacterRENode characters: (String with: char) ].
	^ SmaCCCharacterRENode
		characters: (String withAll: (self allCharacters select: block))
]

{ #category : #private }
SmaCCDefinitionParser >> parseCharacterBlock: aToken [
	| characters aStream invert node |
	aStream := ReadStream
		on: (aToken value copyFrom: 2 to: aToken value size - 1).
	characters := OrderedCollection new.
	invert := aStream peekFor: $^.
	[ aStream atEnd ]
		whileFalse: [ characters addAll: (self charactersFor: aStream in: aToken) ].
	node := SmaCCCharacterRENode characters: (String withAll: characters).
	invert
		ifTrue: [ node := SmaCCNotRENode on: node ].
	^ node
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForAnnotateTokens1: nodes [
	^ grammar annotateTokens: true
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForAttributesLine1: nodes [
	^ (grammar classNamed: (nodes at: 2) value asSymbol)
		extraAttributes:
			((nodes at: 4)
				collect: [ :each | SmaCCVariableDefinition variableName: each ])
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForClassList1: nodes [
	^ OrderedCollection new
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForClassList2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 2) value asSymbol;
		yourself
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForEndDirective1: nodes [
	^ self state: #default
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForExcludeStates2: nodes [
	^ scannerDefinition addExcludeState: (nodes at: 2)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForFile1: nodes [
	^ grammar
		addExtraSymbols;
		yourself
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForGLR1: nodes [
	^ grammar isGLR: true
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIdMethodLine1: nodes [
	(nodes at: 2) do: [ :each | grammar makeTokenIdMethodFor: each ].
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIdTokens1: nodes [
	^ OrderedCollection with: (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIdTokens2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 2) value;
		yourself
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoreCase1: nodes [
	^ grammar ignoreCase: true
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoredVariableList2: nodes [
	(nodes at: 1) add: (nodes at: 2) value.
	^ nodes at: 1
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForIgnoredVariables1: nodes [
	^ grammar ignoredVariables: (nodes at: 3)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForLeftLine1: nodes [
	(nodes at: 2)
		do: [ :each | 
			grammar
				leftPrecedenceFor: each;
				setOperatorPrecedenceFor: each to: scanner lineNumber ].
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForNonAssociativeLine1: nodes [
	(nodes at: 2)
		do: [ :each | 
			grammar
				nonAssociativePrecedenceFor: each;
				setOperatorPrecedenceFor: each to: scanner lineNumber ].
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule2: nodes [
	^ self verifyCodeToken: (nodes at: 2) for: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule3: nodes [
	^ self createClass: (nodes at: 3) value asSymbol for: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRule4: nodes [
	^ self createDefaultClassFor: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForParserRules1: nodes [
	^ (nodes at: 1)
		add: (nodes at: 3);
		yourself
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForPrefixLine1: nodes [
	^ grammar prefix: (nodes at: 2) value
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForProductionRule1: nodes [
	| symbol |
	symbol := grammar nonTerminalSymbolNamed:
		(nodes at: 1) value.
	(nodes at: 4) do: [ :each | symbol addProduction: each ].
	self createDefaultClassesForSymbol:
		(nodes at: 1) value.
	^ symbol
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex2: nodes [
	^ (nodes at: 1) | (nodes at: 3)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegex3: nodes [
	^ (nodes at: 1) , (nodes at: 2)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule1: nodes [
	| symbol |
	(nodes at: 4) position: (nodes at: 2) startPosition.
	scannerDefinition
		addToken: (nodes at: 4)
		withName:
			(nodes at: 2) value.
	symbol := grammar
		findSymbolNamed:
			(nodes at: 2) value
		ifAbsent: [ nil ].
	symbol notNil
		ifTrue: [ symbol regularExpression: (nodes at: 4) ].
	^ nodes at: 4
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexRule2: nodes [
	^ (nodes at: 2)
		addState: (nodes at: 1);
		yourself
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm10: nodes [
	^ (nodes at: 1) repeatForAtLeast: 1
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm11: nodes [
	^ (nodes at: 1) repeatFor: 0 to: 1
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm12: nodes [
	| readStream start stop |
	readStream := ReadStream
		on:
			((nodes at: 2) value copyFrom: 2 to:
				(nodes at: 2) value size - 1).
	start := readStream upTo: $,.
	stop := readStream upToEnd.
	^ (nodes at: 1)
		repeatFor:
			(start isEmpty
				ifTrue: [ 0 ]
				ifFalse: [ start asNumber ])
		to:
			(stop isEmpty
				ifTrue: [ 1 bitShift: 31 ]
				ifFalse: [ stop asNumber ])
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm2: nodes [
	^ SmaCCCharacterRENode characters: (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm3: nodes [
	^ SmaCCCharacterRENode characters: self allCharacters
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm4: nodes [
	^ self
		nodeFor:
			(ReadStream
				on:
					((nodes at: 1) value copyFrom: 2 to:
						(nodes at: 1) value size))
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm6: nodes [
	^ self parseCharacterBlock: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm7: nodes [
	^ (scannerDefinition
		tokenNamed: (nodes at: 1) value
		ifAbsentPut: [ self generateImplicitToken: (nodes at: 1) ]) copy
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm8: nodes [
	^ SmaCCSequenceRENode
		nodes:
			((nodes at: 1) value asOrderedCollection
				collect: [ :each | SmaCCCharacterRENode characters: (String with: each) ])
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRegexTerm9: nodes [
	^ (nodes at: 1) repeat
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRightLine1: nodes [
	(nodes at: 2)
		do: [ :each | 
			grammar
				rightPrecedenceFor: each;
				setOperatorPrecedenceFor: each to: scanner lineNumber ].
	^ nil
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRootClassLine1: nodes [
	^ (grammar classNamed: (nodes at: 2) value asSymbol) beRoot
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRule1: nodes [
	^ grammar setStartSymbolIfNone: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForRule3: nodes [
	^ (nodes at: 1) states isEmpty
		ifTrue: [ (nodes at: 1) addStates: scannerDefinition nonExcludeStates ]
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartDirective1: nodes [
	^ self state: #directives
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartProduction1: nodes [
	^ self state: #parser
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartRegex1: nodes [
	^ self state: #scanner
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartingTokens1: nodes [
	^ grammar
		addStartingSymbol:
			(grammar nonTerminalSymbolNamed:
				(nodes at: 1) value)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStartingTokens2: nodes [
	^ grammar
		addStartingSymbol:
			(grammar nonTerminalSymbolNamed:
				(nodes at: 2) value)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForStates2: nodes [
	^ scannerDefinition addState: (nodes at: 2)
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSuffixLine1: nodes [
	^ grammar suffix: (nodes at: 2) value
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSuperclassLine1: nodes [
	^ (nodes at: 4)
		do: [ :each | 
			(grammar classNamed: each)
				superclass:
					(grammar classNamed:
						(nodes at: 2) value asSymbol) ]
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForSymbol1: nodes [
	^ (nodes at: 1) value asSymbol
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm1: nodes [
	^ grammar keywordTerminalNamed: (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm2: nodes [
	^ grammar
		findSymbolNamed: (nodes at: 1) value
		ifAbsentAdd: [ | node symbol |
			symbol := grammar newTerminalSymbolNamed:
				(nodes at: 1) value.
			(scannerDefinition includesTokenNamed:
				(nodes at: 1) value)
				ifTrue: [ symbol
						regularExpression:
							(scannerDefinition tokenNamed:
								(nodes at: 1) value) ]
				ifFalse: [ node := SmaCCGrammar implicitToken:
						(nodes at: 1) value.
					node notNil
						ifTrue: [ node addStates: scannerDefinition nonExcludeStates.
							symbol regularExpression: node ] ].
			symbol ]
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm3: nodes [
	^ grammar nonTerminalSymbolNamed: (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerm4: nodes [
	^ grammar errorSymbol
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerms1: nodes [
	^ grammar newRHS
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerms2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 2);
		yourself
]

{ #category : #'generated-reduction actions' }
SmaCCDefinitionParser >> reduceActionForTerms3: nodes [
	^ (nodes at: 1)
		add: (nodes at: 2);
		nameLastItem:
			((nodes at: 3) value copyFrom: 2 to:
				(nodes at: 3) value size - 1);
		yourself
]

{ #category : #generated }
SmaCCDefinitionParser >> reduceTable [
^#(
	#(75 0 #reduceActionForStartRegex1:) 
	#(71 0 #reduceActionForStartDirective1:) 
	#(74 1 #reduceActionForSymbol1:) 
	#(79 0 #reduceActionForStartProduction1:) 
	#(52 1 #reduceFor:) 
	#(52 1 #reduceActionForRule1:) 
	#(57 1 #reduceFor:) 
	#(55 1 #reduceActionForFile1:) 
	#(52 1 #reduceActionForRule3:) 
	#(57 2 #reduceFor:) 
	#(70 0 #reduceActionForEndDirective1:) 
	#(86 2 #reduceActionForRegexRule2:) 
	#(83 0 #reduceActionForTerms1:) 
	#(66 0 #reduceFor:) 
	#(53 0 #reduceFor:) 
	#(45 1 #reduceActionForGLR1:) 
	#(46 1 #reduceActionForIgnoreCase1:) 
	#(48 1 #reduceActionForAnnotateTokens1:) 
	#(73 1 #reduceFor:) 
	#(81 0 #reduceActionForEndDirective1:) 
	#(80 1 #reduceFor:) 
	#(82 1 #liftFirstValue:) 
	#(68 2 #reduceFor:) 
	#(51 2 #reduceFor:) 
	#(64 2 #reduceActionForRootClassLine1:) 
	#(60 2 #reduceActionForPrefixLine1:) 
	#(59 2 #reduceActionForSuffixLine1:) 
	#(65 1 #reduceActionForTerm4:) 
	#(65 1 #reduceActionForTerm2:) 
	#(65 1 #reduceActionForTerm3:) 
	#(65 1 #reduceActionForTerm1:) 
	#(50 2 #reduceActionForLeftLine1:) 
	#(62 1 #reduceFor:) 
	#(41 2 #reduceActionForRightLine1:) 
	#(42 2 #reduceActionForNonAssociativeLine1:) 
	#(67 1 #reduceActionForIdTokens1:) 
	#(43 2 #reduceActionForIdMethodLine1:) 
	#(69 1 #reduceActionForStartingTokens1:) 
	#(87 2 #reduceFor:) 
	#(78 1 #reduceActionForRegexTerm7:) 
	#(78 1 #reduceActionForRegexTerm8:) 
	#(78 1 #reduceActionForRegexTerm2:) 
	#(78 1 #reduceActionForRegexTerm4:) 
	#(78 1 #reduceActionForRegexTerm6:) 
	#(78 1 #reduceActionForRegexTerm3:) 
	#(77 0 #reduceActionForEndDirective1:) 
	#(76 1 #liftFirstValue:) 
	#(82 2 #reduceActionForParserRule2:) 
	#(83 2 #reduceActionForTerms2:) 
	#(66 2 #reduceActionForStates2:) 
	#(53 2 #reduceActionForExcludeStates2:) 
	#(56 0 #reduceActionForClassList1:) 
	#(58 0 #reduceActionForClassList1:) 
	#(62 2 #reduceFor:) 
	#(67 2 #reduceActionForIdTokens2:) 
	#(69 2 #reduceActionForStartingTokens2:) 
	#(72 1 #reduceActionForIdTokens1:) 
	#(47 3 #reduceActionForIgnoredVariables1:) 
	#(44 5 #reduceFor:) 
	#(76 2 #reduceActionForRegex3:) 
	#(78 2 #reduceActionForRegexTerm9:) 
	#(78 2 #reduceActionForRegexTerm10:) 
	#(78 2 #reduceActionForRegexTerm11:) 
	#(78 2 #reduceActionForRegexTerm12:) 
	#(80 3 #reduceActionForParserRules1:) 
	#(49 6 #reduceActionForProductionRule1:) 
	#(82 3 #reduceActionForParserRule4:) 
	#(83 3 #reduceActionForTerms3:) 
	#(72 2 #reduceActionForIgnoredVariableList2:) 
	#(78 3 #liftSecondValue:) 
	#(76 3 #reduceActionForRegex2:) 
	#(86 6 #reduceActionForRegexRule1:) 
	#(82 4 #reduceActionForParserRule3:) 
	#(63 5 #reduceActionForSuperclassLine1:) 
	#(56 2 #reduceActionForClassList2:) 
	#(61 5 #reduceActionForAttributesLine1:) 
	#(58 2 #reduceActionForIdTokens2:)
	).
]

{ #category : #private }
SmaCCDefinitionParser >> reportCharacterBlockErrorForToken: aToken [
	currentToken := aToken.
	self reportErrorMessage: 'Invalid character block'
]

{ #category : #generated }
SmaCCDefinitionParser >> symbolNames [
	^ #('"("' '"|"' '"*"' '"error"' '"+"' '")"' '"?"' '<states>' '<excludes>' '<root>' '<hierarchy>' '<attributes>' '<prefix>' '<suffix>' '<left>' '<right>' '<nonassoc>' '<id>' '<start>' '<glr>' '<ignorecase>' '<ignorevariables>' '<annotate_tokens>' '<whitespace>' '<tokenname>' '<symbolname>' '<keyword>' '<comment>' '<code>' '<variablename>' '<production>' '<directive>' '<semicolon>' '<backslashcharacter>' '<characterblock>' '<repeat>' '<character>' '<anycharacter>' '<classLeft>' '<classRight>' 'RightLine' 'NonAssociativeLine' 'IdMethodLine' 'DirectiveLine' 'GLR' 'IgnoreCase' 'IgnoredVariables' 'AnnotateTokens' 'ProductionRule' 'LeftLine' 'ExcludeStatesLine' 'Rule' 'ExcludeStates' 'B e g i n' 'File' 'ClassList' 'Rules' 'IvarList' 'SuffixLine' 'PrefixLine' 'AttributesLine' 'TokenList' 'SuperclassLine' 'RootClassLine' 'Term' 'States' 'IdTokens' 'StatesLine' 'StartingTokens' 'EndDirective' 'StartDirective' 'IgnoredVariableList' 'Directive' 'Symbol' 'StartRegex' 'Regex' 'EndRegex' 'RegexTerm' 'StartProduction' 'ParserRules' 'EndProduction' 'ParserRule' 'Terms' 'E O F' 'error' 'RegexRule' 'StartLine')
]

{ #category : #private-strings }
SmaCCDefinitionParser >> tabString [
	^ '	'
]

{ #category : #generated }
SmaCCDefinitionParser >> transitionTable [
^#(
#[1 0 6 0 25 0 9 0 26 0 10 0 32 0 13 0 44 0 17 0 49 0 21 0 52 0 25 0 55 0 29 0 57 0 33 0 71 0 37 0 74 0 41 0 75 0 45 0 86] 
#[1 0 14 0 25 0 14 0 26 0 18 0 31 0 49 0 79] 
#[0 0 22 0 25 0 26 0 32 0 84] 
#[0 0 26 0 25 0 26 0 32 0 84] 
#[0 0 30 0 25 0 26 0 32 0 84] 
#[0 0 0 0 84] 
#[1 0 6 0 25 0 9 0 26 0 10 0 32 0 13 0 44 0 17 0 49 0 53 0 52 0 33 0 71 0 37 0 74 0 41 0 75 0 34 0 84 0 45 0 86] 
#[0 0 57 0 32] 
#[1 0 6 0 25 0 61 0 26 0 37 0 74 0 41 0 75 0 65 0 86] 
#[0 0 69 0 25] 
#[0 0 38 0 25 0 26 0 32 0 84] 
#[0 0 73 0 31] 
#[0 0 42 0 25 0 26 0 32 0 84] 
#[1 0 77 0 8 0 81 0 9 0 85 0 10 0 89 0 11 0 93 0 12 0 97 0 13 0 101 0 14 0 105 0 15 0 109 0 16 0 113 0 17 0 117 0 18 0 121 0 19 0 125 0 20 0 129 0 21 0 46 0 22 0 133 0 23 0 137 0 41 0 141 0 42 0 145 0 43 0 149 0 45 0 153 0 46 0 157 0 47 0 161 0 48 0 165 0 50 0 169 0 51 0 173 0 59 0 177 0 60 0 181 0 61 0 185 0 63 0 189 0 64 0 193 0 68 0 197 0 70 0 201 0 73 0 205 0 87] 
#[0 0 14 0 25 0 26 0 33] 
#[0 0 50 0 25 0 26 0 32 0 84] 
#[0 0 209 0 31] 
#[1 0 54 0 2 0 54 0 4 0 54 0 25 0 54 0 26 0 54 0 27 0 54 0 29 0 54 0 33 0 54 0 39 0 213 0 80 0 217 0 82 0 221 0 83] 
#[1 0 58 0 26 0 58 0 33 0 225 0 66] 
#[1 0 62 0 26 0 62 0 33 0 229 0 53] 
#[0 0 233 0 26] 
#[0 0 237 0 26] 
#[0 0 241 0 26] 
#[0 0 245 0 26] 
#[0 0 249 0 26] 
#[1 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 1 13 0 62 1 17 0 65] 
#[1 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 1 21 0 62 1 17 0 65] 
#[1 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 1 25 0 62 1 17 0 65] 
#[1 1 29 0 25 1 33 0 67] 
#[1 1 37 0 26 1 41 0 69] 
#[0 0 66 0 33] 
#[0 0 70 0 33] 
#[0 0 74 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 0 78 0 33] 
#[0 1 45 0 22] 
#[1 0 46 0 33 1 49 0 70] 
#[0 0 78 0 33] 
#[1 1 53 0 1 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 85 0 76 1 89 0 78] 
#[1 1 93 0 2 0 82 0 33 1 97 0 81] 
#[0 0 86 0 2 0 33] 
#[1 0 90 0 2 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 1 101 0 29 0 90 0 33 1 105 0 39 1 109 0 65] 
#[1 0 61 0 26 0 94 0 33 1 113 0 74] 
#[1 0 61 0 26 0 98 0 33 1 117 0 74] 
#[0 0 102 0 33] 
#[0 1 121 0 1] 
#[0 1 125 0 1] 
#[0 0 106 0 33] 
#[0 0 110 0 33] 
#[0 0 114 0 2 0 4 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 118 0 2 0 4 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 122 0 2 0 4 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[0 0 126 0 2 0 4 0 25 0 26 0 27 0 29 0 30 0 33 0 39] 
#[1 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 0 130 0 33 1 129 0 65] 
#[0 0 134 0 4 0 25 0 26 0 27 0 33] 
#[1 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 0 138 0 33 1 129 0 65] 
#[1 0 253 0 4 1 1 0 25 1 5 0 26 1 9 0 27 0 142 0 33 1 129 0 65] 
#[0 0 146 0 25 0 33] 
#[1 1 133 0 25 0 150 0 33] 
#[0 0 154 0 26 0 33] 
#[1 1 137 0 26 0 158 0 33] 
#[1 1 141 0 26 1 145 0 72] 
#[0 1 149 0 33] 
#[1 1 53 0 1 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 153 0 76 1 89 0 78] 
#[0 0 162 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 166 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 170 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 174 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 178 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 170 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 182 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[1 1 53 0 1 1 157 0 2 1 57 0 25 1 61 0 26 1 65 0 32 0 186 0 33 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 161 0 77 1 165 0 78] 
#[1 0 190 0 1 0 190 0 2 1 169 0 3 1 173 0 5 0 190 0 6 1 177 0 7 0 190 0 25 0 190 0 26 0 190 0 32 0 190 0 33 0 190 0 34 0 190 0 35 1 181 0 36 0 190 0 37 0 190 0 38] 
#[1 0 54 0 2 0 54 0 4 0 54 0 25 0 54 0 26 0 54 0 27 0 54 0 29 0 54 0 33 0 54 0 39 1 185 0 82 0 221 0 83] 
#[0 1 189 0 33] 
#[0 0 194 0 2 0 33] 
#[1 1 193 0 26 1 197 0 40] 
#[1 0 198 0 2 0 198 0 4 0 198 0 25 0 198 0 26 0 198 0 27 0 198 0 29 1 201 0 30 0 198 0 33 0 198 0 39] 
#[0 0 202 0 26 0 33] 
#[0 0 206 0 26 0 33] 
#[1 0 210 0 6 0 210 0 26 1 205 0 56] 
#[1 0 214 0 6 0 214 0 26 1 209 0 58] 
#[0 0 218 0 4 0 25 0 26 0 27 0 33] 
#[0 0 222 0 25 0 33] 
#[0 0 226 0 26 0 33] 
#[0 0 230 0 26 0 33] 
#[1 1 213 0 26 0 234 0 33] 
#[0 0 238 0 25 0 26 0 32 0 84] 
#[1 1 53 0 1 1 157 0 2 1 217 0 6 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 165 0 78] 
#[1 1 53 0 1 1 57 0 25 1 61 0 26 1 65 0 32 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 221 0 76 1 89 0 78] 
#[0 1 225 0 33] 
#[1 0 242 0 1 0 242 0 2 1 169 0 3 1 173 0 5 0 242 0 6 1 177 0 7 0 242 0 25 0 242 0 26 0 242 0 32 0 242 0 33 0 242 0 34 0 242 0 35 1 181 0 36 0 242 0 37 0 242 0 38] 
#[0 0 246 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 250 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 0 254 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 1 2 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[0 1 6 0 2 0 33] 
#[0 1 10 0 25 0 26 0 32 0 84] 
#[0 1 229 0 40] 
#[0 1 14 0 2 0 33] 
#[0 1 18 0 2 0 4 0 25 0 26 0 27 0 29 0 33 0 39] 
#[1 1 233 0 6 1 237 0 26] 
#[1 1 241 0 6 1 245 0 26] 
#[0 1 22 0 26 0 33] 
#[0 1 26 0 1 0 2 0 3 0 5 0 6 0 7 0 25 0 26 0 32 0 33 0 34 0 35 0 36 0 37 0 38] 
#[1 1 53 0 1 1 30 0 2 1 30 0 6 1 57 0 25 1 61 0 26 1 65 0 32 1 30 0 33 1 69 0 34 1 73 0 35 1 77 0 37 1 81 0 38 1 165 0 78] 
#[0 1 34 0 25 0 26 0 32 0 84] 
#[0 1 38 0 2 0 33] 
#[0 1 42 0 33] 
#[0 1 46 0 6 0 26] 
#[0 1 50 0 33] 
#[0 1 54 0 6 0 26]
	).
]

{ #category : #testing }
SmaCCDefinitionParser >> tryAllTokens [
	^ true
]

{ #category : #private }
SmaCCDefinitionParser >> verifyCodeToken: codeToken for: aSmaCCRHS [
	| code |
	code := codeToken value copyFrom: 2 to: codeToken value size - 1.
	RBParser
		parseExpression: code
		onError:
			[ :string :position | 
			currentToken := nil.
			self position: codeToken startPosition + position.
			self reportErrorMessage: string ].
	aSmaCCRHS reduceActionSource: code.
	^ aSmaCCRHS
]

{ #category : #private-strings }
SmaCCDefinitionParser >> verticalTabString [
	^ String with: (Character value: 11)
]

{ #category : #private }
SmaCCDefinitionParser >> whitespaceValues [
	^ #[9 10 11 12 13 32]
]
