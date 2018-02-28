Class {
	#name : #JSParser,
	#superclass : #SmaCCGLRParser,
	#classInstVars : [
		'keywords'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #'generated-accessing' }
JSParser class >> cacheId [
	^'2017-11-29T08:17:34.055296-06:00'
]

{ #category : #generated }
JSParser class >> definitionComment [
"%root Program;
%prefix JS;
%suffix Node;

%scopes default template;

%start Expression Statement Script Module;

%ignore_variables semicolon comma leftParen rightParen leftBracket rightBracket leftBrace rightBrace left right colonToken;

%hierarchy Literal (
	BooleanLiteral 
	NullLiteral 
	NumericLiteral 
	RegularExpressionLiteral
	StringLiteral
);
%hierarchy Expression (
	ArrayLiteral
	ArrowFunction
	AssignmentExpression
	BinaryExpression
	CallExpression
	ClassExpression
	CommaExpression
	ConditionalExpression
	Function
	IndexedPropertyExpression
	Literal
	NameExpression
	NamedPropertyExpression
	NewExpression
	NewTargetExpression
	ObjectLiteral
	PrefixExpression
	PostfixExpression
	SpreadExpression
	SuperCallExpression
	SuperIndexedPropertyExpression
	SuperNamedPropertyExpression
	TaggedTemplateLiteral
	TemplateLiteral
	ThisExpression
	UnaryExpression
	YieldExpression
);
%hierarchy Function (
	GeneratorFunction
);
%hierarchy Statement (
	BlockStatement
	BreakStatement
	ContinueStatement
	DebuggerStatement
	DoWhileStatement
	EmptyStatement
	ExpressionStatement
	ForInStatement
	ForOfStatement
	ForStatement
	IfStatement
	LabelledStatement
	LexicalDeclaration
	ReturnStatement
	SwitchStatement
	ThrowStatement
	TryStatement
	VariableStatement
	WhileStatement
	WithStatement
);
%hierarchy MethodDefinition (
	GeneratorMethodDefinition
	GetMethodDefinition
	SetMethodDefinition
);
%hierarchy VariableDeclaration (
	RestVariableDeclaration
);

%glr;

%id <semicolon> <identifier> <slash> <slashEqual> <regular_expression> <identifierName> <rightBrace>;

%right ""else"";

<semicolon>
:	\;
;
<slash>
:	\/
;
<slashEqual>
:	\/\=
;
<rightBrace>
:	\}
;

<comment>
	: \/\/ [^\r\n]*
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<hex>
:	[0-9a-fA-F]
;
<identifier_start>
:	<isLetter> | \$ | _ | (\\ u <hex>{4,4})
;
<identifier_part>	#TODO
:	<identifier_start> | <isDigit> 
;
<identifier>
:	<identifier_start> <identifier_part>*
;
<identifierName>
:	<identifier>
;
<whitespace>
:	<isSeparator>+
;
<escape_sequence>
:	[^\r\n] | (x <hex>{2,2}) | (u <hex>{4,4})
;
<escape>
:	\\  <escape_sequence>
;
<line_continuation>
:	\\ (\r | \n | (\r\n))
;
<string>
:	(\"" ([^\""\\\r\n] | <line_continuation> | <escape>)* \"")+
|	(\' ([^\'\\\r\n] | <line_continuation> | <escape>)* \')+
;
<decimal_integer>
#:	0 | ([1-9][0-9]*)
:	[0-9]+	# numbers that start with 0's should be octals, but node appears to allow 09 (e.g., (1 + 09) == (1 + 011))
;
<decimal_digits>
:	[0-9]+
;
<exponent_part>
:	[eE] [\+\-]? <decimal_digits>
;
<decimal>
:	(<decimal_integer> \. <decimal_digits>? <exponent_part>?)
|	(\. <decimal_digits> <exponent_part>?)
|	(<decimal_integer> <exponent_part>?)
;
<hex_integer>
:	0 [xX] [0-9A-Fa-f]+
;
<binary_integer>
:	0 [bB] [0-1]+
;
<octal_integer>
:	0 [oO] [0-7]+
;
<numeric>
:	<decimal> | <hex_integer> | <binary_integer> | <octal_integer>
;
<regular_expression_backslash_sequence>
:	\\ [^\r\n]
;
<regular_expression_class_chars>
:	([^\\\]] | <regular_expression_backslash_sequence>)*
;
<regular_expression_class>
:	\[ <regular_expression_class_chars> \]
;
<regular_expression_first_char>
:	[^\\\/\[\*\r\n] | <regular_expression_backslash_sequence> | <regular_expression_class>
;
<regular_expression_char>
:	[^\\\/\[\r\n] | <regular_expression_backslash_sequence> | <regular_expression_class>
;
<regular_expression_chars>
:	<regular_expression_char>*
;
<regular_expression_body>
:	<regular_expression_first_char> <regular_expression_chars>
;
<regular_expression_flags>
:	<identifier>*
;
<regular_expression>
:	\/ <regular_expression_body> \/ <regular_expression_flags>
;
<no_substitution_template>##################
:	\` ([^\`$\\] | <escape> | \$[^\`\{])* \$? \`
;
<template_head>
:	\` ([^\`$\\] | <escape> | \$[^\`\{])* \$\{
;
template <template_middle>
:	\}  ([^\`$\\] | <escape> | \$[^\`\{])* \$\{
;
template <template_end>
:	\}  ([^\`$\\] | <escape> | \$[^\`\{])* \$?\`
;
<patternToken>
	: \`\? [^\`]+ \`
	;

goal 
:	Module
;

# A.2 Expressions
#IdentifierReference
#:	Identifier
#:	Identifier
#;
#BindingIdentifieropt
#:
#|	BindingIdentifier
#;
#BindingIdentifier
#:	Identifier
#;
Identifieropt
:
|	Identifier
;
Identifier
: 	<identifier> 'name' {{NameExpression}}
;
#LabeledIdentifier
#:	Identifier
#;
PrimaryExpression
:	""this"" 'thisToken' {{ThisExpression}}
|	Identifier	##
|	Literal 
|	ArrayLiteral 
|	ObjectLiteral 
|	FunctionExpression
|	ClassExpression
|	GeneratorExpression
|	RegularExpressionLiteral
|	TemplateLiteral
|	ParenthesizedExpression	# CoverParenthesizedExpressionAndArrowParameterList
;
ParenthesizedExpression
:	""("" 'leftParen' Expression "")"" 'rightParen' {{Expression}}
;
CoverParenthesizedExpressionAndArrowParameterList
:	""("" 'left' ParameterListopt "")"" 'right'	##
#|	""("" 'left' "")"" 'right'
#|	""("" 'left'   ""..."" 'ellipsis' Identifier 'varParameter' "")"" 'right'	##
#|	""("" 'left' ""..."" 'ellipsis' BindingPattern 'varParameter' "")"" 'right' 
|	""("" 'left' ParameterListopt "","" 'comma' ""..."" 'ellipsis' Identifier 'varParameter' "")"" 'right'	##
|	""("" 'left' ParameterListopt "","" 'comma' ""..."" 'ellipsis' BindingPattern 'varParameter' "")"" 'right'	##
;
ParameterListopt
:	
|	ParameterList
;
ParameterList
:	BindingElement 'parameter'
|	ParameterList "","" 'comma' BindingElement 'parameter'
;
Literal
:	NullLiteral 'value' {{NullLiteral}}
|	BooleanLiteral 'value' {{BooleanLiteral}}
|	NumericLiteral 'value' {{NumericLiteral}}
|	StringLiteral 'value' {{StringLiteral}}
;
ArrayLiteral 
:	""["" 'leftBracket' Elisionopt ""]"" 'rightBracket' {{}}
|	""["" 'leftBracket' ElementList ""]"" 'rightBracket' {{}}
|	""["" 'leftBracket' ElementList Elision ""]"" 'rightBracket' {{}}	##
;
ElementList
:	Elisionopt AssignmentExpression 'expression'
|	Elisionopt SpreadElement 'expression'
|	ElementList "","" 'comma' Elisionopt AssignmentExpression 'expression'
|	ElementList "","" 'comma' Elisionopt SpreadElement 'expression'
;
Elisionopt
:
|	Elision
;
Elision
:	"","" 'comma'
|	Elision "","" 'comma'
;
SpreadElement
:	""..."" 'ellipsis' AssignmentExpression 'expression' {{SpreadExpression}}
;
ObjectLiteral  
:	""{"" 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	""{"" 'leftBrace' PropertyDefinitionList <rightBrace> 'rightBrace' {{}}
|	""{"" 'leftBrace' PropertyDefinitionList "","" 'comma' <rightBrace> 'rightBrace' {{}}
;
PropertyDefinitionList
:	PropertyDefinition 'definition'
|	PropertyDefinitionList "","" 'comma' PropertyDefinition 'definition'
;
PropertyDefinition
:	Identifier
|	CoverInitializedName
|	PropertyName 'name' "":"" 'colonToken' AssignmentExpression 'value' {{PropertyAssignment}}
|	MethodDefinition
;
PropertyName 
:	LiteralPropertyName
|	ComputedPropertyName
;
LiteralPropertyName
:	Identifier
|	StringLiteral 'name' {{NameExpression}}
|	NumericLiteral 'name' {{NameExpression}}
;
ComputedPropertyName
:	""["" 'leftBrace' AssignmentExpression 'expression' ""]"" 'rightBrace' {{}}
;
CoverInitializedName
:	Identifier 'name' Initializer {{PropertyAssignment}}	##
;
Initializeropt
:
|	Initializer
;
Initializer
:	""="" 'equalToken' AssignmentExpression 'value'
;
TemplateLiteral
:	<no_substitution_template> 'part' {{}}
|	StartTemplateLiteral <template_head> 'part' Expression 'expression' TemplateSpans {{}}
;
StartTemplateLiteral
:	{#template}
;
TemplateSpans
:	<template_end> 'part'
|	TemplateMiddleList <template_end> 'part'
;
TemplateMiddleList
:	<template_middle> 'part' Expression 'expression'
|	TemplateMiddleList <template_middle> 'part' Expression 'expression'
;
MemberExpression 
:	PrimaryExpression 
|	MemberExpression 'expression' ""["" 'leftBracket' Expression 'fieldExpression' ""]"" 'rightBracket' {{IndexedPropertyExpression}}
|	MemberExpression 'expression' ""."" 'periodToken' <identifierName> 'name' {{NamedPropertyExpression}}
|	MemberExpression 'expression' TemplateLiteral 'template' {{TaggedTemplateLiteral}}
|	SuperProperty
|	MetaProperty
|	""new"" 'newToken' MemberExpression 'expression' Arguments {{NewExpression}}
;
SuperProperty
:	""super"" 'superToken' ""["" 'leftBracket' Expression 'expression' ""]"" 'rightBracket' {{SuperIndexedPropertyExpression}}
|	""super"" 'superToken' ""."" 'periodToken' <identifierName> 'name' {{SuperNamedPropertyExpression}}
;
MetaProperty
:	NewTarget
;
NewTarget
:	""new"" 'newToken' ""."" 'periodToken' ""target"" 'targetToken' {{NewTargetExpression}}
;
NewExpression 
:	MemberExpression 
|	""new"" 'newToken' NewExpression 'expression' {{}}
;
CallExpression 
:	MemberExpression 'expression' Arguments {{}}
|	SuperCall
|	CallExpression 'expression' Arguments {{}}
|	CallExpression 'expression' ""["" 'leftBracket' Expression 'expression' ""]"" 'rightBracket' {{IndexedPropertyExpression}}
|	CallExpression 'expression' ""."" 'periodToken' <identifierName> 'name' {{NamedPropertyExpression}}
|	CallExpression 'expression' TemplateLiteral 'template'  {{TaggedTemplateLiteral}}
;
SuperCall
:	""super"" 'superToken' Arguments {{SuperCallExpression}}
;
Arguments 
:	""("" 'left' "")"" 'right'
|	""("" 'left' ArgumentList "")"" 'right'
;
ArgumentList 
:	AssignmentExpression 'argument'
|	""..."" 'ellipsis' AssignmentExpression 'varArgument'
|	ArgumentList "","" 'comma' AssignmentExpression 'argument'
|	ArgumentList "","" 'comma' ""..."" 'ellipsis' AssignmentExpression 'varArgument'
;
LeftHandSideExpression 
:	NewExpression 
|	CallExpression
;
UpdateExpression
:	LeftHandSideExpression 'expression' ""++"" 'operator' {{PostfixExpression}}
|	LeftHandSideExpression 'expression' ""--"" 'operator' {{PostfixExpression}}
|	""++"" 'operator' UnaryExpression 'expression' {{PrefixExpression}}	##
|	""--"" 'operator' UnaryExpression 'expression' {{PrefixExpression}}	##
|	LeftHandSideExpression ###
;
UnaryExpression 
:	UpdateExpression 
|	""delete"" 'operator' UnaryExpression 'expression' {{}}
|	""void"" 'operator' UnaryExpression 'expression' {{}}
|	""typeof"" 'operator' UnaryExpression 'expression' {{}}
|	""+"" 'operator' UnaryExpression 'expression' {{}}
|	""-"" 'operator' UnaryExpression 'expression' {{}}
|	""~"" 'operator' UnaryExpression 'expression' {{}} 
|	""!"" 'operator' UnaryExpression 'expression' {{}}
;
ExponentiationExpression
:	UnaryExpression
|	UnaryExpression 'leftExpression' ""**"" 'operator' ExponentiationExpression 'rightExpression' {{BinaryExpression}}
;
MultiplicativeExpression 
:	ExponentiationExpression 
|	MultiplicativeExpression 'leftExpression' ""*"" 'operator' UnaryExpression 'rightExpression' {{BinaryExpression}}
|	MultiplicativeExpression 'leftExpression' <slash> 'operator' UnaryExpression 'rightExpression' {{BinaryExpression}}
|	MultiplicativeExpression 'leftExpression' ""%"" 'operator' UnaryExpression 'rightExpression' {{BinaryExpression}}
;
AdditiveExpression 
:	MultiplicativeExpression 
|	AdditiveExpression 'leftExpression' ""+"" 'operator' MultiplicativeExpression 'rightExpression' {{BinaryExpression}}
|	AdditiveExpression 'leftExpression' ""-"" 'operator' MultiplicativeExpression 'rightExpression' {{BinaryExpression}}
;
ShiftExpression 
:	AdditiveExpression 
|	ShiftExpression 'leftExpression' ""<<"" 'operator' AdditiveExpression 'rightExpression' {{BinaryExpression}}
|	ShiftExpression 'leftExpression' "">>"" 'operator' AdditiveExpression 'rightExpression' {{BinaryExpression}}
|	ShiftExpression 'leftExpression' "">>>"" 'operator' AdditiveExpression 'rightExpression' {{BinaryExpression}}
;
RelationalExpression 
:	ShiftExpression 
|	RelationalExpression 'leftExpression' ""<"" 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' "">"" 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' ""<="" 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' "">="" 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' ""instanceof"" 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
|	RelationalExpression 'leftExpression' ""in"" 'operator' ShiftExpression 'rightExpression' {{BinaryExpression}}
;
EqualityExpression 
:	RelationalExpression 
|	EqualityExpression 'leftExpression' ""=="" 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
|	EqualityExpression 'leftExpression' ""!="" 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
|	EqualityExpression 'leftExpression' ""==="" 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
|	EqualityExpression 'leftExpression' ""!=="" 'operator' RelationalExpression 'rightExpression' {{BinaryExpression}}
;
BitwiseANDExpression 
:	EqualityExpression 
|	BitwiseANDExpression 'leftExpression'""&"" 'operator' EqualityExpression 'rightExpression' {{BinaryExpression}}
;
BitwiseXORExpression 
:	BitwiseANDExpression 
|	BitwiseXORExpression 'leftExpression' ""^"" 'operator' BitwiseANDExpression 'rightExpression' {{BinaryExpression}}
;
BitwiseORExpression 
:	BitwiseXORExpression 
|	BitwiseORExpression 'leftExpression' ""|"" 'operator' BitwiseXORExpression 'rightExpression' {{BinaryExpression}}
;
LogicalANDExpression 
:	BitwiseORExpression 
|	LogicalANDExpression 'leftExpression' ""&&"" 'operator' BitwiseORExpression 'rightExpression' {{BinaryExpression}}
;
LogicalORExpression 
:	LogicalANDExpression 
|	LogicalORExpression 'leftExpression' ""||"" 'operator' LogicalANDExpression 'rightExpression' {{BinaryExpression}}
;
ConditionalExpression 
:	LogicalORExpression 
|	LogicalORExpression 'condition' ""?"" 'questionMarkToken' AssignmentExpression 'trueExpression' "":"" 'colonToken' AssignmentExpression 'falseExpression' {{}}
;
AssignmentExpression 
:	ConditionalExpression 
|	YieldExpression
|	ArrowFunction
|	LeftHandSideExpression 'lhs' AssignmentOperator 'operator' AssignmentExpression 'rhs' {{}}	##
;
AssignmentOperator
:	""=""	#
|	""*=""
|	<slashEqual>
|	""%=""
|	""+=""
|	""-=""
|	""<<=""
|	"">>=""
|	"">>>=""
|	""&=""
|	""^=""
|	""|=""
;
#AssignmentPattern
#:	ObjectAssignmentPattern
#|	ArrayAssignmentPattern
#;
#ObjectAssignmentPattern
#:	""{"" 'leftBrace' <rightBrace> 'rightBrace'
#|	""{"" 'leftBrace' AssignmentPropertyList <rightBrace> 'rightBrace'
#|	""{"" 'leftBrace' AssignmentPropertyList "","" 'comma' <rightBrace> 'rightBrace'
#;
#ArrayAssignmentPattern
#:	""["" 'leftBracket' Elisionopt AssignmentRestElementopt ""]"" 'rightBracket'
#|	""["" 'leftBracket' AssignmentElementList ""]"" 'rightBracket'
#|	""["" 'leftBracket' AssignmentElementList "","" 'comma' Elisionopt AssignmentRestElementopt ""]"" 'rightBracket'
#;
#AssignmentPropertyList
#:	AssignmentProperty
#|	AssignmentPropertyList AssignmentProperty
#;
#AssignmentElementList
#:	AssignmentElisionElement
#|	AssignmentElementList "","" 'comma' AssignmentElisionElement
#;
#AssignmentElisionElement
#:	Elisionopt AssignmentElement
#;
#AssignmentProperty
#:	IdentifierReference Initializeropt
#|	PropertyName "":"" 'colonToken' AssignmentElement
#;
#AssignmentElement
#:	DestructuringAssignmentTarget Initializeropt
#;
#AssignmentRestElementopt
#:
#|	AssignmentRestElement
#;
#AssignmentRestElement
#:	""..."" DestructuringAssignmentTarget
#;
#DestructuringAssignmentTarget
#:	LeftHandSideExpression
#;
Expressionopt
:
|	Expression
;
Expression
:	AssignmentExpression
|	Expression 'expression' "","" 'comma' AssignmentExpression 'expression' {{CommaExpression}}
;
#A.3 Statements
Statement 
:	BlockStatement
|	VariableStatement 
|	EmptyStatement 
|	ExpressionStatement 
|	IfStatement 
|	BreakableStatement
|	ContinueStatement 
|	BreakStatement 
|	ReturnStatement 
|	WithStatement 
|	LabelledStatement
|	ThrowStatement 
|	TryStatement 
|	DebuggerStatement
;
Declaration
:	HoistableDeclaration
|	ClassDeclaration
|	LexicalDeclaration
;
HoistableDeclaration
:	FunctionDeclaration
|	GeneratorDeclaration
;
BreakableStatement
:	IterationStatement 
|	SwitchStatement
;
BlockStatement
:	Block
;
Block 
:	""{"" 'leftBrace' StatementListopt <rightBrace> 'rightBrace' {{BlockStatement}}
;
StatementListopt
:
|	StatementList
;
StatementList 
:	StatementListItem 'statement'
|	StatementList StatementListItem 'statement'
;
StatementListItem
:	Statement
|	LexicalDeclaration #Declaration
;
LexicalDeclaration
:	LetOrConst 'typeToken' BindingList <semicolon> 'semicolon' {{}}
;
LetOrConst
:	""let""
|	""const""
;
BindingList
:	LexicalBinding 'binding'
|	BindingList "","" 'comma' LexicalBinding 'binding'
;
LexicalBinding
:	Identifier 'variable' Initializeropt {{VariableDeclaration}}	##
|	BindingPattern 'pattern' Initializer {{VariablePatternDeclaration}}
;
VariableStatement 
:	""var"" 'varToken' VariableDeclarationList <semicolon> 'semicolon' {{}}
;
VariableDeclarationList 
:	VariableDeclaration 'variable'
|	VariableDeclarationList "","" 'comma' VariableDeclaration 'variable'
;
VariableDeclaration 
:	Identifier 'variable' Initializeropt {{VariableDeclaration}}	##
|	BindingPattern 'pattern' Initializer {{VariablePatternDeclaration}}
;
BindingPattern
:	ObjectBindingPattern
|	ArrayBindingPattern
;
ObjectBindingPattern
:	""{"" 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	""{"" 'leftBrace' BindingPropertyList <rightBrace> 'rightBrace' {{}}
|	""{"" 'leftBrace' BindingPropertyList "","" 'comma' <rightBrace> 'rightBrace' {{}}
;
ArrayBindingPattern
:	""["" 'leftBracket' Elisionopt BindingRestElementopt 'restElement' ""]"" 'rightBracket' {{}}
|	""["" 'leftBracket' BindingElementList ""]"" 'rightBracket' {{}}
|	""["" 'leftBracket' BindingElementList "","" 'comma' Elisionopt BindingRestElementopt 'restElement' ""]"" 'rightBracket' {{}}
;
BindingPropertyList
:	BindingProperty 'property'
|	BindingPropertyList "","" 'comma' BindingProperty 'property'
;
BindingElementList
:	BindingElisionElement 
|	BindingElementList "","" 'comma' BindingElisionElement 
;
BindingElisionElement
:	Elisionopt BindingElement 'element'
;
BindingProperty
:	SingleNameBinding
|	PropertyName 'name' "":"" 'colonToken' BindingElement 'element' {{}}
;
BindingElement
:	SingleNameBinding
|	BindingPattern 'variable' Initializeropt {{VariableDeclaration}}
;
SingleNameBinding
:	Identifier 'variable' Initializeropt {{VariableDeclaration}}	##
;
BindingRestElementopt
:
|	BindingRestElement
;
BindingRestElement
:	""..."" 'ellipsis' Identifier 'variable' {{RestVariableDeclaration}}	##
|	""..."" 'ellipsis' BindingPattern 'variable' {{RestVariableDeclaration}}
;
EmptyStatement 
:	<semicolon> 'semicolon' {{}}
;
ExpressionStatement 
:	Expression 'expression' <semicolon> 'semicolon' {{}}
;
IfStatement 
:	""if"" 'ifToken' ""("" 'left' Expression 'expression' "")"" 'right' Statement 'trueStatement' ""else"" 'elseToken' Statement 'elseStatement' {{}}
|	""if"" 'ifToken' ""("" 'left' Expression 'expression' "")"" 'right' Statement 'trueStatement' {{}}
;
IterationStatement 
:	""do"" 'doToken' Statement 'statement' ""while"" 'whileToken' ""("" 'left' Expression 'expression' "")"" 'right' <semicolon> 'semicolon' {{DoWhileStatement}}
|	""while"" 'whileToken' ""("" 'left' Expression 'expression' "")"" 'right' Statement 'statement' {{WhileStatement}}
|	""for"" 'forToken' ""("" 'left' Expressionopt 'initialExpression'<semicolon> 'semicolon' Expressionopt 'condition'<semicolon> 'semicolon' Expressionopt 'iteratorExpression' "")"" 'right' Statement 'statement' {{ForStatement}}
|	""for"" 'forToken' ""("" 'left' ""var"" 'varToken' VariableDeclarationList <semicolon> 'semicolon' Expressionopt 'condition' <semicolon> 'semicolon' Expressionopt 'iteratorExpression' "")"" 'right' Statement 'statement' {{ForStatement}}
|	""for"" 'forToken' ""("" 'left' LexicalDeclaration 'declaration' Expressionopt 'condition' <semicolon> 'semicolon' Expressionopt 'iteratorExpression' "")"" 'right' Statement 'statement' {{ForStatement}}
|	""for"" 'forToken' ""("" 'left' LeftHandSideExpression 'variable' ""in"" 'inToken' Expression 'expression' "")"" 'right' Statement 'statement' {{ForInStatement}}
|	""for"" 'forToken' ""("" 'left' ""var"" 'varToken' ForBinding 'variable' ""in"" 'inToken' Expression 'expression' "")"" 'right' Statement  'statement' {{ForInStatement}}
|	""for"" 'forToken' ""("" 'left' ForDeclaration ""in"" 'inToken' Expression 'expression' "")"" 'right' Statement  'statement' {{ForInStatement}}
|	""for"" 'forToken' ""("" 'left' LeftHandSideExpression 'variable' ""of"" 'ofToken' Expression 'expression' "")"" 'right' Statement 'statement' {{ForOfStatement}}
|	""for"" 'forToken' ""("" 'left' ""var"" 'varToken' VariableDeclaration 'variable' ""of"" 'ofToken' Expression 'expression' "")"" 'right' Statement  'statement' {{ForOfStatement}}
|	""for"" 'forToken' ""("" 'left' ForDeclaration ""of"" 'ofToken' Expression 'expression' "")"" 'right' Statement  'statement' {{ForOfStatement}}
;
ForDeclaration
:	LetOrConst 'varToken' ForBinding 'variable'
;
ForBinding
:	Identifier	##
|	BindingPattern
;
ContinueStatement 
:	""continue"" 'continueToken' CheckEOL Identifieropt 'label' <semicolon> 'semicolon' {{}}
;
BreakStatement 
:	""break"" 'breakToken' CheckEOL Identifieropt 'label' <semicolon> 'semicolon' {{}}
;
CheckEOL
:	{self checkEOL. nil}
;
ReturnStatement  
:	""return"" 'returnToken' CheckEOL Expressionopt 'expression' <semicolon> 'semicolon' {{}}
;
WithStatement 
:	""with"" 'withToken' ""("" 'left' Expression 'expression' "")"" 'right' Statement 'statement' {{}}
;
SwitchStatement 
:	""switch"" 'switchToken' ""("" 'left' Expression 'expression' "")"" 'right' CaseBlock {{}}
;
CaseBlock 
:	""{"" 'leftBrace' CaseClausesopt <rightBrace> 'rightBrace' 
|	""{"" 'leftBrace' CaseClausesopt DefaultClause 'clause' CaseClausesopt <rightBrace> 'rightBrace'
;
CaseClausesopt
:
|	CaseClauses
;
CaseClauses 
:	CaseClause 'clause'
|	CaseClauses CaseClause 'clause'
;
CaseClause 
:	""case"" 'caseToken' Expression 'caseExpression' "":"" 'colonToken' StatementListopt {{}}
;
DefaultClause 
:	""default"" 'defaultToken' "":"" 'colonToken' StatementListopt  {{}}
;
LabelledStatement 
:	<identifier> 'label' "":"" 'colonToken' LabeledItem 'statement' {{}}	##
;
LabeledItem
:	Statement
#|	FunctionDeclaration	#Statement already does FunctionExpression
;
ThrowStatement 
:	""throw"" 'throwToken' Expression 'expression' <semicolon> 'semicolon' {{}}
;
TryStatement 
:	""try"" 'tryToken' Block 'tryBlock' Catch {{}}
|	""try"" 'tryToken' Block 'tryBlock' Finally {{}}
|	""try"" 'tryToken' Block 'tryBlock' Catch Finally {{}}
;
Catch 
:	""catch"" 'catchToken' ""("" 'left' CatchParameter 'exceptionType' "")"" 'right' Block 'catchBlock'
;
Finally 
:	""finally"" 'finallyToken' Block 'finallyBlock'
;
CatchParameter
:	Identifier	##
|	BindingPattern
;
DebuggerStatement 
:	""debugger"" 'debuggerToken' <semicolon> 'semicolon' {{}}
;
#A.4
FunctionDeclaration 
:	""function"" 'functionToken' Identifieropt 'name' ""("" 'left' FormalParameters "")"" 'right' ""{"" 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
;
FunctionExpression 
:	""function"" 'functionToken' Identifieropt 'name' ""("" 'left' FormalParameters "")"" 'right' ""{"" 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{Function}}	##
;
StrictFormalParameters
:	FormalParameters
;
FormalParameters
:
|	FormalParameterList
;
FormalParameterList 
:	FunctionRestParameter 'restParameter'
|	FormalsList
|	FormalsList "","" 'comma' FunctionRestParameter 'restParameter'
;
FormalsList
:	FormalParameter 'parameter'
| 	FormalsList "","" 'comma' FormalParameter 'parameter'
;
FunctionRestParameter
:	BindingRestElement
;
FormalParameter
:	BindingElement
;
FunctionBody 
:	FunctionStatementList
;
FunctionStatementList
:	StatementListopt
;
ArrowFunction
:	ArrowParameters ""=>"" 'arrow' ConciseBody {{}}
;
ArrowParameters
:	Identifier 'parameter'	##
|	CoverParenthesizedExpressionAndArrowParameterList
;
ConciseBody
:	AssignmentExpression 'statement'
|	""{"" 'leftBracket' FunctionBody <rightBrace> 'rightBracket'
;
MethodDefinition
:	PropertyName 'name' ""("" 'left' StrictFormalParameters "")"" 'right' ""{"" 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{}}
|	GeneratorMethod
|	""get"" 'getToken' PropertyName 'name' ""("" 'left' "")"" 'right' ""{"" 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{GetMethodDefinition}}
|	""set"" 'setToken' PropertyName 'name' ""("" 'left' PropertySetParameterList "")"" 'right' ""{"" 'leftBrace' FunctionBody <rightBrace> 'rightBrace' {{SetMethodDefinition}}
;
PropertySetParameterList
:	FormalParameter 'parameter'
;
GeneratorMethod
:	""*"" 'star' PropertyName 'name' ""("" 'left' StrictFormalParameters "")"" 'right' ""{"" 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorMethodDefinition}}
;
GeneratorDeclaration
:	""function"" 'functionToken' ""*"" 'star' Identifieropt 'name' ""("" 'left' FormalParameters "")"" 'right' ""{"" 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorExpression
:	""function"" 'functionToken' ""*"" 'star' Identifieropt 'name' ""("" 'left' FormalParameters "")"" 'right' ""{"" 'leftBrace' GeneratorBody <rightBrace> 'rightBrace' {{GeneratorFunction}}	##
;
GeneratorBody
:	FunctionBody
;
YieldExpression
:	""yield"" 'yieldToken'  staropt AssignmentExpression 'expression' {{}}
;
staropt
:
|	""*"" 'star'
;
ClassDeclaration
:	""class"" 'classToken' Identifieropt 'name' ClassTail {{ClassExpression}}	##
;
ClassExpression
:	""class"" 'classToken' Identifieropt 'name' ClassTail {{}}	##
;
ClassTail
:	ClassHeritageopt ""{"" 'leftBrace' ClassBodyopt <rightBrace> 'rightBrace'
;
ClassHeritageopt
:
|	ClassHeritage
;
ClassHeritage
:	""extends"" 'extendsToken' LeftHandSideExpression 'superclass'
;
ClassBodyopt
:
|	ClassBody
;
ClassBody
:	ClassElementList
;
ClassElementList
:	ClassElement 'element'
|	ClassElementList ClassElement 'element'
;
ClassElement
:	MethodDefinition
|	""static"" 'staticToken' MethodDefinition 'method' {{StaticMethodDefinition}}
|	<semicolon> 'semicolon' {{EmptyStatement}}
;
#A.5
Script
:	ScriptBodyopt {{}}
;
ScriptBodyopt
:
|	ScriptBody
;
ScriptBody
:	StatementList
;
Module
:	ModuleBodyopt {{}}
;
ModuleBodyopt
:
|	ModuleBody
;
ModuleBody
:	ModuleItemList
;
ModuleItemList
:	ModuleItem 'item'
|	ModuleItemList ModuleItem 'item'
;
ModuleItem
:	ImportDeclaration
|	ExportDeclaration
|	StatementListItem
;
ImportDeclaration
:	""import"" 'importToken' ImportClause FromClause <semicolon> 'semicolon' {{}}
|	""import"" 'importToken' ModuleSpecifier <semicolon> 'semicolon' {{}}
;
ImportClause
:	ImportedDefaultBinding 'import'
|	NameSpaceImport 'import'
|	NamedImports 'import'
|	ImportedDefaultBinding 'import' "","" 'comma' NameSpaceImport 'import'
|	ImportedDefaultBinding 'import' "","" 'comma' NamedImports 'import'
;
ImportedDefaultBinding
:	ImportedBinding
;
NameSpaceImport
:	""*"" 'star' ""as"" 'asToken' ImportedBinding 'import' {{}}
;
NamedImports
:	""{"" 'leftBrace' <rightBrace> 'rightBrace' {{}}
|	""{"" 'leftBrace' ImportsList <rightBrace> 'rightBrace' {{}}
|	""{"" 'leftBrace' ImportsList "","" 'comma' <rightBrace> 'rightBrace' {{}}
;
FromClause
:	""from"" 'fromToken' ModuleSpecifier 'from'
;
ImportsList
:	ImportSpecifier 'specifier'
|	ImportsList "","" 'comma' ImportSpecifier 'specifier'
;
ImportSpecifier
:	ImportedBinding 'binding' {{}}
|	<identifierName> 'name' ""as"" 'asToken' ImportedBinding 'binding' {{}}
;
ModuleSpecifier
:	StringLiteral 'import'
;
ImportedBinding
:	Identifier	##
;
ExportDeclaration
:	""export"" 'exportToken' ""*"" 'star' FromClause <semicolon> 'semicolon' {{}}
|	""export"" 'exportToken' ExportClause FromClause <semicolon> 'semicolon' {{}}
|	""export"" 'exportToken' ExportClause <semicolon> 'semicolon' {{}}
|	""export"" 'exportToken' VariableStatement 'statement' {{}}
|	""export"" 'exportToken' Declaration 'declaration' {{}}
#|	""export"" 'exportToken' ""default"" 'defaultToken' HoistableDeclaration 'declaration' {{}}	#handled by AssignmentExpression version below
#|	""export"" 'exportToken' ""default"" 'defaultToken' ClassDeclaration 'declaration' {{}}	#handled by AssignmentExpression version below
|	""export"" 'exportToken' ""default"" 'defaultToken' AssignmentExpression 'statement'<semicolon> 'semicolon' {{}}
;
ExportClause
:	""{"" 'leftBrace' <rightBrace> 'rightBrace'
|	""{"" 'leftBrace' ExportsList <rightBrace> 'rightBrace'
|	""{"" 'leftBrace' ExportsList "","" 'comma' <rightBrace> 'rightBrace'
;
ExportsList
:	ExportSpecifier 'specifier'
|	ExportsList "","" 'comma' ExportSpecifier 'specifier'
;
ExportSpecifier
:	<identifierName> 'name' {{}}
|	<identifierName> 'name' ""as"" 'asToken' <identifierName> 'as' {{}}
;


NullLiteral
:	""null""
;
BooleanLiteral
:	""true""
|	""false""
;
StringLiteral
:	<string>
;
NumericLiteral
:	<numeric>
;
RegularExpressionLiteral
:	<regular_expression> 'value' {{RegularExpressionLiteral}}
;"
]

{ #category : #'file types' }
JSParser class >> fileExtension [
	^ '.js'
]

{ #category : #'file types' }
JSParser class >> fileExtensionType [
	^ 'Javascript files'
]

{ #category : #private }
JSParser class >> keywords [
	^ keywords
		ifNil:
			[ keywords := #(#break #case #catch #continue #debugger #delete #do #else #finally #for #function #if #in #instanceof #typeof #new #var #return #void #switch #while #this #with #throw #try)
				asSet collect: [ :each | each asString ] ]
]

{ #category : #'generated-accessing' }
JSParser class >> scannerClass [
	^JSScanner
]

{ #category : #generated }
JSParser class >> startingStateForExpression [
	^ 2
]

{ #category : #generated }
JSParser class >> startingStateForModule [
	^ 5
]

{ #category : #generated }
JSParser class >> startingStateForScript [
	^ 4
]

{ #category : #generated }
JSParser class >> startingStateForStatement [
	^ 3
]

{ #category : #generated }
JSParser class >> startingStateForgoal [
	^ 1
]

{ #category : #private }
JSParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	(currentToken ids first ~= scanner identifierId
		and: [ (currentToken ids includes: scanner identifierId) and: [ (self keywords includes: currentToken value) not ] ])
		ifTrue: [ self addActionsFor: scanner identifierId to: actions ].
	(currentToken ids first ~= scanner identifierNameId and: [ currentToken ids includes: scanner identifierNameId ])
		ifTrue: [ self addActionsFor: scanner identifierNameId to: actions ].
	(currentToken ids first == scanner regular_expressionId and: [ actions isEmpty ])
		ifTrue: [ (currentToken value at: 2) == $=
				ifTrue: [ currentToken := scanner tokenClass value: '/=' start: currentToken startPosition ids: (Array with: scanner slashEqualId).
					self position: currentToken startPosition + 1 ]
				ifFalse: [ currentToken := scanner tokenClass value: '/' start: currentToken startPosition ids: (Array with: scanner slashId).
					self position: currentToken startPosition ].
			^ self actionsForCurrentToken ].
	(actions isEmpty and: [ ((currentState attributeNamed: #lastInsertedSemicolonPosition) ifNil: [ -1 ]) < scanner position ])
		ifTrue: [ self addActionsFor: self scanner semicolonId to: actions.
			actions notEmpty
				ifTrue: [ currentState attributeNamed: #lastInsertedSemicolonPosition put: scanner position.
					self position: currentToken startPosition - 1.
					currentToken := currentToken class value: ';' start: nil ids: (Array with: self scanner semicolonId) ] ].
	actions isEmpty
		ifTrue: [ (currentToken ids includes: scanner rightBraceId)
				ifTrue: [ | i scannerState stackItem |
					i := nodeStack size.
					scannerState := nil.
					[ i > 0 and: [ scannerState isNil ] ]
						whileTrue: [ stackItem := nodeStack at: i.
							stackItem = #template
								ifTrue: [ scannerState := stackItem ].
							i := i - 1 ].
					scannerState notNil
						ifTrue: [ self scope: scannerState.
							self position: currentToken startPosition - 1.
							currentToken := nil.
							self getNextToken.
							self scope: #default.
							(currentToken ids includes: scanner rightBraceId)
								ifTrue: [ ^ actions ].
							^ self actionsForCurrentToken ] ] ].
	^ actions
]

{ #category : #generated }
JSParser >> ambiguousTransitions [
^#(
#[ 0 26 2 77] 
#[ 0 62 3 169] 
#[ 0 22 0 25] 
#[ 0 22 0 29] 
#[ 0 22 0 33] 
#[ 0 22 0 37] 
#[ 0 22 0 41] 
#[ 0 22 1 237] 
#[ 0 22 0 49] 
#[ 0 22 0 53] 
#[ 0 22 0 57] 
#[ 0 22 0 61] 
#[ 0 22 0 65] 
#[ 0 22 0 69] 
#[ 0 22 0 73] 
#[ 0 22 0 77] 
#[ 0 22 0 81] 
#[ 0 22 0 85] 
#[ 0 22 0 93] 
#[ 0 22 0 113] 
#[ 0 22 0 117] 
#[ 0 22 0 121] 
#[ 0 22 0 125] 
#[ 0 22 1 241] 
#[ 0 22 0 185] 
#[ 0 22 0 189] 
#[ 0 22 0 193] 
#[ 0 22 0 197] 
#[ 0 6 0 22] 
#[ 0 102 1 10] 
#[ 0 106 1 10] 
#[ 0 82 1 18] 
#[ 0 82 4 233] 
#[ 0 82 1 26] 
#[ 1 42 5 41] 
#[ 0 82 1 38] 
#[ 0 254 2 45] 
#[ 1 194 4 165] 
#[ 1 6 1 202] 
#[ 1 18 1 38] 
#[ 0 134 7 245] 
#[ 1 186 1 218] 
#[ 0 82 3 106]
	).
]

{ #category : #private }
JSParser >> checkEOL [
	| stackTop position |
	(self isEOFToken or: [ currentToken ids includes: scanner semicolonId ])
		ifTrue: [ ^ self ].
	stackTop := nodeStack last.
	position := [ ((stackTop isKindOf: SmaCCToken)
		ifTrue: [ stackTop ]
		ifFalse: [ (stackTop isKindOf: SmaCCDeferredChoice)
				ifTrue: [ stackTop possibleItems first ] ]) stopPosition ]
		on: Error
		do: [ :ex | currentToken startPosition ].
	(scanner hasNewlineBetween: position and: currentToken startPosition)
		ifTrue: [ currentState attributeNamed: #lastInsertedSemicolonPosition put: scanner position.
			self position: currentToken startPosition - 1.
			currentToken := currentToken class value: ';' start: nil ids: (Array with: self scanner semicolonId) ]
]

{ #category : #private }
JSParser >> handleError: anInteger [
	(currentToken value = ';' and: [ currentToken startPosition isNil ])
		ifTrue: [ currentToken := nil.
			self getNextToken ].
	^ super handleError: anInteger
]

{ #category : #private }
JSParser >> keywords [
	^ self class keywords
]

{ #category : #private }
JSParser >> performReduceMethod: aSymbol with: items [
	^ (states size > 1
		and: [ items isEmpty
				and: [ (aSymbol beginsWith: 'reduceActionForStartTemplateLiteral') or: [ aSymbol beginsWith: 'reduceActionForCheckEOL' ] ] ])
		ifTrue: [ self perform: aSymbol with: items ]
		ifFalse: [ super performReduceMethod: aSymbol with: items ]
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArgumentList4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments1: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArguments2: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 6).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern1: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result restElement: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern2: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result elements.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayBindingPattern3: nodes [
	| result |
	result := JSArrayBindingPatternNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result elements.
	result addToken: (nodes at: 3) to: result commas.
	result addTokens: (nodes at: 4) to: result commas.
	result restElement: (nodes at: 5).
	result rightBracket: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral1: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commas.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral2: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrayLiteral3: nodes [
	| result |
	result := JSArrayLiteralNode new.
	result leftBracket: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result commas.
	result addNodes: ((nodes at: 2) at: 2) to: result expressions.
	result addTokens: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowFunction1: nodes [
	| result |
	result := JSArrowFunctionNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result parameters.
	result left: ((nodes at: 1) at: 2).
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result right: ((nodes at: 1) at: 4).
	result ellipsis: ((nodes at: 1) at: 5).
	result varParameter: ((nodes at: 1) at: 6).
	result arrow: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result leftBracket: ((nodes at: 3) at: 2).
	result rightBracket: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForArrowParameters2: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 2 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 5 put: ((nodes at: 1) at: 5).
	result at: 6 put: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForAssignmentExpression4: nodes [
	| result |
	result := JSAssignmentExpressionNode new.
	result lhs: (nodes at: 1).
	result operator: (nodes at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElement2: nodes [
	| result |
	result := JSVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElementList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingElisionElement1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingProperty2: nodes [
	| result |
	result := JSBindingPropertyNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result element: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBindingRestElement2: nodes [
	| result |
	result := JSRestVariableDeclarationNode new.
	result ellipsis: (nodes at: 1).
	result variable: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBlock1: nodes [
	| result |
	result := JSBlockStatementNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForBreakStatement1: nodes [
	| result |
	result := JSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result label: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallExpression1: nodes [
	| result |
	result := JSCallExpressionNode new.
	result expression: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result right: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result arguments.
	result addTokens: ((nodes at: 2) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 2) at: 6) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCallExpression4: nodes [
	| result |
	result := JSIndexedPropertyExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result leftBracket: (nodes at: 2).
	result addNode: (nodes at: 3) to: result expressions.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseBlock2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	self addAll: (nodes at: 4) to: (result at: 2).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCaseClause1: nodes [
	| result |
	result := JSCaseClauseNode new.
	result caseToken: (nodes at: 1).
	result caseExpression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCatch1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCheckEOL1: nodes [
	self checkEOL.
	^ nil
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassElement2: nodes [
	| result |
	result := JSStaticMethodDefinitionNode new.
	result staticToken: (nodes at: 1).
	result method: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassExpression1: nodes [
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result extendsToken: ((nodes at: 3) at: 1).
	result superclass: ((nodes at: 3) at: 2).
	result leftBrace: ((nodes at: 3) at: 3).
	result addNodes: ((nodes at: 3) at: 4) to: result elements.
	result rightBrace: ((nodes at: 3) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForClassTail1: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: (nodes at: 2).
	self addAll: (nodes at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForComputedPropertyName1: nodes [
	| result |
	result := JSComputedPropertyNameNode new.
	result leftBrace: (nodes at: 1).
	result expression: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConciseBody1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConciseBody2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 1).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForConditionalExpression2: nodes [
	| result |
	result := JSConditionalExpressionNode new.
	result condition: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result falseExpression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForContinueStatement1: nodes [
	| result |
	result := JSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result label: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCoverInitializedName1: nodes [
	| result |
	result := JSPropertyAssignmentNode new.
	result name: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCoverParenthesizedExpressionAndArrowParameterList1: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForCoverParenthesizedExpressionAndArrowParameterList3: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: (nodes at: 5).
	result at: 4 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForDebuggerStatement1: nodes [
	| result |
	result := JSDebuggerStatementNode new.
	result debuggerToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForDefaultClause1: nodes [
	| result |
	result := JSDefaultClauseNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForElementList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForElementList3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForEmptyStatement1: nodes [
	| result |
	result := JSEmptyStatementNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExponentiationExpression2: nodes [
	| result |
	result := JSBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportClause1: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportClause2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportClause3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self add: (nodes at: 3) to: (result at: 4).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration1: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result star: (nodes at: 2).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration2: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result rightBrace: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration3: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result leftBrace: ((nodes at: 2) at: 1).
	result rightBrace: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration4: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result statement: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration5: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportDeclaration6: nodes [
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result statement: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportSpecifier1: nodes [
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExportSpecifier2: nodes [
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result _as: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExpression2: nodes [
	| result |
	result := JSCommaExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result comma: (nodes at: 2).
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForExpressionStatement1: nodes [
	| result |
	result := JSExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameterList1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameterList2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameterList3: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self add: (nodes at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFormalParameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForFunctionExpression1: nodes [
	| result |
	result := JSFunctionNode new.
	result functionToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForGeneratorExpression1: nodes [
	| result |
	result := JSGeneratorFunctionNode new.
	result functionToken: (nodes at: 1).
	result star: (nodes at: 2).
	result name: (nodes at: 3).
	result left: (nodes at: 4).
	result restParameter: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result parameters.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result right: (nodes at: 6).
	result leftBrace: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result statements.
	result rightBrace: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForGeneratorMethod1: nodes [
	| result |
	result := JSGeneratorMethodDefinitionNode new.
	result star: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result restParameter: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result parameters.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIdentifier1: nodes [
	| result |
	result := JSNameExpressionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIfStatement1: nodes [
	| result |
	result := JSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result trueStatement: (nodes at: 5).
	result elseToken: (nodes at: 6).
	result elseStatement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIfStatement2: nodes [
	| result |
	result := JSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result trueStatement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportClause1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportClause4: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration1: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result addObjects: ((nodes at: 2) at: 1) to: result imports.
	result comma: ((nodes at: 2) at: 2).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportDeclaration2: nodes [
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result addObject: (nodes at: 2) to: result imports.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier1: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result binding: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForImportSpecifier2: nodes [
	| result |
	result := JSImportSpecifierNode new.
	result name: (nodes at: 1).
	result asToken: (nodes at: 2).
	result binding: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInitializer1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForInitializeropt1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement10: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result variable: (nodes at: 4).
	result ofToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement11: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: ((nodes at: 3) at: 1).
	result variable: ((nodes at: 3) at: 2).
	result ofToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement1: nodes [
	| result |
	result := JSDoWhileStatementNode new.
	result doToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result whileToken: (nodes at: 3).
	result left: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement2: nodes [
	| result |
	result := JSWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement3: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result initialExpression: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolons.
	result condition: (nodes at: 5).
	result addToken: (nodes at: 6) to: result semicolons.
	result iteratorExpression: (nodes at: 7).
	result right: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement4: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result variables.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result addToken: (nodes at: 5) to: result semicolons.
	result condition: (nodes at: 6).
	result addToken: (nodes at: 7) to: result semicolons.
	result iteratorExpression: (nodes at: 8).
	result right: (nodes at: 9).
	result statement: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement5: nodes [
	| result |
	result := JSForStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result declaration: (nodes at: 3).
	result condition: (nodes at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
	result iteratorExpression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement6: nodes [
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result variable: (nodes at: 3).
	result inToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement7: nodes [
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result variable: (nodes at: 4).
	result inToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement8: nodes [
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: ((nodes at: 3) at: 1).
	result variable: ((nodes at: 3) at: 2).
	result inToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForIterationStatement9: nodes [
	| result |
	result := JSForOfStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result variable: (nodes at: 3).
	result ofToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result right: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLabelledStatement1: nodes [
	| result |
	result := JSLabelledStatementNode new.
	result label: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLexicalDeclaration1: nodes [
	| result |
	result := JSLexicalDeclarationNode new.
	result typeToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result bindings.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral1: nodes [
	| result |
	result := JSNullLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral2: nodes [
	| result |
	result := JSBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral3: nodes [
	| result |
	result := JSNumericLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForLiteral4: nodes [
	| result |
	result := JSStringLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression2: nodes [
	| result |
	result := JSIndexedPropertyExpressionNode new.
	result addNode: (nodes at: 1) to: result expressions.
	result leftBracket: (nodes at: 2).
	result fieldExpression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression3: nodes [
	| result |
	result := JSNamedPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression4: nodes [
	| result |
	result := JSTaggedTemplateLiteralNode new.
	result expression: (nodes at: 1).
	result template: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMemberExpression7: nodes [
	| result |
	result := JSNewExpressionNode new.
	result newToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result right: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result arguments.
	result addTokens: ((nodes at: 3) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 3) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 3) at: 6) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition1: nodes [
	| result |
	result := JSMethodDefinitionNode new.
	result name: (nodes at: 1).
	result left: (nodes at: 2).
	result restParameter: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition3: nodes [
	| result |
	result := JSGetMethodDefinitionNode new.
	result getToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result right: (nodes at: 4).
	result leftBrace: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result statements.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForMethodDefinition4: nodes [
	| result |
	result := JSSetMethodDefinitionNode new.
	result setToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result addNode: (nodes at: 4) to: result parameters.
	result right: (nodes at: 5).
	result leftBrace: (nodes at: 6).
	result addNodes: (nodes at: 7) to: result statements.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModule1: nodes [
	| result |
	result := JSModuleNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleBodyopt1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleBodyopt2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleItemList1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForModuleItemList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNameSpaceImport1: nodes [
	| result |
	result := JSNameSpaceImportNode new.
	result star: (nodes at: 1).
	result asToken: (nodes at: 2).
	result import: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedImports1: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedImports2: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNamedImports3: nodes [
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result specifiers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNewExpression2: nodes [
	| result |
	result := JSNewExpressionNode new.
	result newToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForNewTarget1: nodes [
	| result |
	result := JSNewTargetExpressionNode new.
	result newToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result targetToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern1: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern2: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result properties.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectBindingPattern3: nodes [
	| result |
	result := JSObjectBindingPatternNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result properties.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral1: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral2: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForObjectLiteral3: nodes [
	| result |
	result := JSObjectLiteralNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForParameterListopt1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForParenthesizedExpression1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPrimaryExpression1: nodes [
	| result |
	result := JSThisExpressionNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinition3: nodes [
	| result |
	result := JSPropertyAssignmentNode new.
	result name: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinitionList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForPropertyDefinitionList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForRegularExpressionLiteral1: nodes [
	| result |
	result := JSRegularExpressionLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForReturnStatement1: nodes [
	| result |
	result := JSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForScript1: nodes [
	| result |
	result := JSScriptNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSpreadElement1: nodes [
	| result |
	result := JSSpreadExpressionNode new.
	result ellipsis: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForStartTemplateLiteral1: nodes [
	^ #template
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSuperCall1: nodes [
	| result |
	result := JSSuperCallExpressionNode new.
	result superToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result right: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result arguments.
	result addTokens: ((nodes at: 2) at: 4) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 5) to: result varArguments.
	result addTokens: ((nodes at: 2) at: 6) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSuperProperty1: nodes [
	| result |
	result := JSSuperIndexedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSuperProperty2: nodes [
	| result |
	result := JSSuperNamedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForSwitchStatement1: nodes [
	| result |
	result := JSSwitchStatementNode new.
	result switchToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result clauses.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateLiteral1: nodes [
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 1) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateLiteral2: nodes [
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addNode: (nodes at: 3) to: result expressions.
	result addTokens: ((nodes at: 4) at: 1) to: result parts.
	result addNodes: ((nodes at: 4) at: 2) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateMiddleList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateMiddleList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTemplateSpans2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForThrowStatement1: nodes [
	| result |
	result := JSThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTryStatement1: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result catchToken: ((nodes at: 3) at: 1).
	result left: ((nodes at: 3) at: 2).
	result exceptionType: ((nodes at: 3) at: 3).
	result right: ((nodes at: 3) at: 4).
	result catchBlock: ((nodes at: 3) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTryStatement2: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result finallyToken: ((nodes at: 3) at: 1).
	result finallyBlock: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForTryStatement3: nodes [
	| result |
	result := JSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result tryBlock: (nodes at: 2).
	result catchToken: ((nodes at: 3) at: 1).
	result left: ((nodes at: 3) at: 2).
	result exceptionType: ((nodes at: 3) at: 3).
	result right: ((nodes at: 3) at: 4).
	result catchBlock: ((nodes at: 3) at: 5).
	result finallyToken: ((nodes at: 4) at: 1).
	result finallyBlock: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUnaryExpression8: nodes [
	| result |
	result := JSUnaryExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUpdateExpression2: nodes [
	| result |
	result := JSPostfixExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForUpdateExpression4: nodes [
	| result |
	result := JSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForVariableDeclaration2: nodes [
	| result |
	result := JSVariablePatternDeclarationNode new.
	result pattern: (nodes at: 1).
	result equalToken: ((nodes at: 2) at: 1).
	result value: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForVariableStatement1: nodes [
	| result |
	result := JSVariableStatementNode new.
	result varToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result variables.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForWithStatement1: nodes [
	| result |
	result := JSWithStatementNode new.
	result withToken: (nodes at: 1).
	result left: (nodes at: 2).
	result expression: (nodes at: 3).
	result right: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JSParser >> reduceActionForYieldExpression1: nodes [
	| result |
	result := JSYieldExpressionNode new.
	result yieldToken: (nodes at: 1).
	result star: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #generated }
JSParser >> reduceTable [
^#(
	#(141 0 #reduceActionForStartTemplateLiteral1:) 
	#(250 0 #reduceActionForModuleBodyopt1:) 
	#(248 0 #reduceActionForModuleBodyopt1:) 
	#(123 1 #liftFirstValue:) 
	#(126 0 #reduceActionForModuleBodyopt1:) 
	#(198 0 #reduceActionForModuleBodyopt1:) 
	#(116 1 #reduceActionForPrimaryExpression1:) 
	#(117 0 #reduceActionForParameterListopt1:) 
	#(142 0 #nil) 
	#(122 1 #liftFirstValue:) 
	#(240 0 #nil) 
	#(201 1 #liftFirstValue:) 
	#(217 0 #reduceActionForCheckEOL1:) 
	#(177 1 #reduceActionForEmptyStatement1:) 
	#(144 1 #reduceActionForIdentifier1:) 
	#(125 1 #liftFirstValue:) 
	#(124 1 #liftFirstValue:) 
	#(113 1 #reduceActionForRegularExpressionLiteral1:) 
	#(114 1 #reduceActionForTemplateLiteral1:) 
	#(116 1 #liftFirstValue:) 
	#(147 1 #liftFirstValue:) 
	#(235 1 #reduceActionForArrowParameters2:) 
	#(140 1 #reduceActionForLiteral1:) 
	#(140 1 #reduceActionForLiteral2:) 
	#(140 1 #reduceActionForLiteral3:) 
	#(140 1 #reduceActionForLiteral4:) 
	#(137 1 #liftFirstValue:) 
	#(235 1 #reduceActionForArrowParameters1:) 
	#(152 1 #liftFirstValue:) 
	#(149 1 #liftFirstValue:) 
	#(156 1 #liftFirstValue:) 
	#(154 1 #liftFirstValue:) 
	#(158 1 #liftFirstValue:) 
	#(159 1 #liftFirstValue:) 
	#(157 1 #liftFirstValue:) 
	#(160 1 #liftFirstValue:) 
	#(161 1 #liftFirstValue:) 
	#(162 1 #liftFirstValue:) 
	#(163 1 #liftFirstValue:) 
	#(164 1 #liftFirstValue:) 
	#(165 1 #liftFirstValue:) 
	#(166 1 #liftFirstValue:) 
	#(167 1 #liftFirstValue:) 
	#(168 1 #liftFirstValue:) 
	#(169 1 #liftFirstValue:) 
	#(170 1 #liftFirstValue:) 
	#(129 1 #liftFirstValue:) 
	#(268 1 #liftFirstValue:) 
	#(186 1 #liftFirstValue:) 
	#(200 1 #liftFirstValue:) 
	#(180 1 #liftFirstValue:) 
	#(175 1 #liftFirstValue:) 
	#(253 1 #liftFirstValue:) 
	#(185 1 #reduceActionForModule1:) 
	#(250 1 #reduceActionForModuleBodyopt2:) 
	#(251 1 #reduceActionForModuleBodyopt2:) 
	#(252 1 #reduceActionForModuleItemList1:) 
	#(249 1 #reduceActionForModuleBodyopt2:) 
	#(199 1 #reduceActionForModuleItemList1:) 
	#(269 1 #reduceActionForScript1:) 
	#(248 1 #reduceActionForModuleBodyopt2:) 
	#(157 2 #reduceActionForUnaryExpression8:) 
	#(128 1 #reduceActionForModuleItemList1:) 
	#(126 1 #reduceActionForModuleBodyopt2:) 
	#(109 2 #reduceActionForObjectLiteral1:) 
	#(136 1 #reduceActionForIdentifier1:) 
	#(131 1 #reduceActionForPropertyDefinitionList1:) 
	#(132 1 #liftFirstValue:) 
	#(134 1 #liftFirstValue:) 
	#(136 1 #liftFirstValue:) 
	#(198 1 #reduceActionForModuleBodyopt2:) 
	#(135 1 #liftFirstValue:) 
	#(139 0 #reduceActionForInitializeropt1:) 
	#(117 1 #reduceActionForModuleBodyopt2:) 
	#(120 1 #reduceActionForPropertyDefinitionList1:) 
	#(118 1 #liftFirstValue:) 
	#(121 1 #liftFirstValue:) 
	#(158 2 #reduceActionForUpdateExpression4:) 
	#(152 2 #reduceActionForNewExpression2:) 
	#(153 2 #reduceActionForSuperCall1:) 
	#(188 2 #reduceActionForDebuggerStatement1:) 
	#(142 1 #liftFirstValue:) 
	#(255 2 #reduceActionForExportDeclaration4:) 
	#(192 1 #liftFirstValue:) 
	#(255 2 #reduceActionForExportDeclaration5:) 
	#(189 1 #liftFirstValue:) 
	#(242 0 #reduceActionForInitializeropt1:) 
	#(240 1 #liftFirstValue:) 
	#(258 1 #liftFirstValue:) 
	#(262 1 #liftFirstValue:) 
	#(256 1 #reduceActionForImportClause1:) 
	#(259 1 #liftFirstValue:) 
	#(174 0 #nil) 
	#(204 1 #reduceActionForPropertyDefinitionList1:) 
	#(178 2 #reduceActionForExpressionStatement1:) 
	#(147 2 #reduceActionForMemberExpression4:) 
	#(154 2 #reduceActionForCallExpression1:) 
	#(154 2 #reduceActionForMemberExpression4:) 
	#(173 1 #liftFirstValue:) 
	#(158 2 #reduceActionForUpdateExpression2:) 
	#(202 1 #reduceActionForPropertyDefinitionList1:) 
	#(252 2 #reduceActionForModuleItemList2:) 
	#(199 2 #reduceActionForModuleItemList2:) 
	#(108 3 #reduceActionForArrayLiteral1:) 
	#(127 2 #reduceActionForElementList1:) 
	#(108 3 #reduceActionForArrayLiteral2:) 
	#(128 2 #reduceActionForModuleItemList2:) 
	#(109 3 #reduceActionForObjectLiteral2:) 
	#(227 0 #reduceActionForFormalParameters1:) 
	#(133 2 #reduceActionForCoverInitializedName1:) 
	#(197 3 #reduceActionForBlock1:) 
	#(209 0 #nil) 
	#(210 1 #reduceActionForBindingElementList1:) 
	#(206 2 #reduceActionForObjectBindingPattern1:) 
	#(208 1 #reduceActionForPropertyDefinitionList1:) 
	#(211 1 #liftFirstValue:) 
	#(119 3 #reduceActionForCoverParenthesizedExpressionAndArrowParameterList1:) 
	#(139 1 #reduceActionForModuleBodyopt2:) 
	#(121 2 #reduceActionForBindingElement2:) 
	#(115 3 #reduceActionForParenthesizedExpression1:) 
	#(213 2 #reduceActionForBindingElement2:) 
	#(151 3 #reduceActionForNewTarget1:) 
	#(147 3 #reduceActionForMemberExpression7:) 
	#(150 2 #reduceActionForArguments1:) 
	#(155 1 #reduceActionForArgumentList1:) 
	#(148 3 #reduceActionForSuperProperty2:) 
	#(187 3 #reduceActionForTryStatement1:) 
	#(187 3 #reduceActionForTryStatement2:) 
	#(272 3 #reduceActionForThrowStatement1:) 
	#(265 2 #reduceActionForExportClause1:) 
	#(267 1 #reduceActionForExportSpecifier1:) 
	#(266 1 #reduceActionForPropertyDefinitionList1:) 
	#(255 3 #reduceActionForExportDeclaration3:) 
	#(111 3 #reduceActionForClassExpression1:) 
	#(242 1 #reduceActionForModuleBodyopt2:) 
	#(171 3 #reduceActionForYieldExpression1:) 
	#(261 2 #reduceActionForNamedImports1:) 
	#(264 1 #reduceActionForImportSpecifier1:) 
	#(263 1 #reduceActionForPropertyDefinitionList1:) 
	#(254 3 #reduceActionForImportDeclaration2:) 
	#(174 1 #liftFirstValue:) 
	#(205 2 #reduceActionForVariableDeclaration2:) 
	#(205 2 #reduceActionForBindingElement2:) 
	#(176 3 #reduceActionForVariableStatement1:) 
	#(273 3 #reduceActionForLabelledStatement1:) 
	#(223 1 #liftFirstValue:) 
	#(137 3 #reduceActionForExpression2:) 
	#(147 3 #reduceActionForMemberExpression3:) 
	#(154 3 #reduceActionForMemberExpression3:) 
	#(129 3 #reduceActionForAssignmentExpression4:) 
	#(159 3 #reduceActionForExponentiationExpression2:) 
	#(160 3 #reduceActionForExponentiationExpression2:) 
	#(161 3 #reduceActionForExponentiationExpression2:) 
	#(162 3 #reduceActionForExponentiationExpression2:) 
	#(163 3 #reduceActionForExponentiationExpression2:) 
	#(164 3 #reduceActionForExponentiationExpression2:) 
	#(165 3 #reduceActionForExponentiationExpression2:) 
	#(166 3 #reduceActionForExponentiationExpression2:) 
	#(167 3 #reduceActionForExponentiationExpression2:) 
	#(168 3 #reduceActionForExponentiationExpression2:) 
	#(169 3 #reduceActionForExponentiationExpression2:) 
	#(203 2 #reduceActionForVariableDeclaration2:) 
	#(203 2 #reduceActionForBindingElement2:) 
	#(191 3 #reduceActionForLexicalDeclaration1:) 
	#(236 1 #reduceActionForConciseBody1:) 
	#(172 3 #reduceActionForArrowFunction1:) 
	#(130 2 #reduceActionForSpreadElement1:) 
	#(108 4 #reduceActionForArrayLiteral3:) 
	#(274 3 #reduceActionForComputedPropertyName1:) 
	#(109 4 #reduceActionForObjectLiteral3:) 
	#(131 3 #reduceActionForPropertyDefinitionList2:) 
	#(132 3 #reduceActionForPropertyDefinition3:) 
	#(233 1 #liftFirstValue:) 
	#(231 1 #liftFirstValue:) 
	#(229 1 #reduceActionForModuleBodyopt2:) 
	#(227 1 #reduceActionForModuleBodyopt2:) 
	#(230 1 #reduceActionForFormalParameterList1:) 
	#(230 1 #reduceActionForFormalParameterList2:) 
	#(232 1 #reduceActionForPropertyDefinitionList1:) 
	#(138 2 #reduceActionForInitializer1:) 
	#(212 2 #reduceActionForBindingElisionElement1:) 
	#(209 1 #liftFirstValue:) 
	#(207 3 #reduceActionForArrayBindingPattern2:) 
	#(206 3 #reduceActionForObjectBindingPattern2:) 
	#(120 3 #reduceActionForPropertyDefinitionList2:) 
	#(148 4 #reduceActionForSuperProperty1:) 
	#(155 2 #reduceActionForArgumentList2:) 
	#(150 3 #reduceActionForArguments2:) 
	#(225 2 #reduceActionForInitializer1:) 
	#(187 4 #reduceActionForTryStatement3:) 
	#(257 2 #reduceActionForInitializer1:) 
	#(255 4 #reduceActionForExportDeclaration1:) 
	#(265 3 #reduceActionForExportClause2:) 
	#(255 4 #reduceActionForExportDeclaration6:) 
	#(190 3 #reduceActionForClassExpression1:) 
	#(255 4 #reduceActionForExportDeclaration2:) 
	#(244 2 #reduceActionForInitializer1:) 
	#(243 0 #reduceActionForModuleBodyopt1:) 
	#(260 3 #reduceActionForNameSpaceImport1:) 
	#(261 3 #reduceActionForNamedImports2:) 
	#(254 4 #reduceActionForImportDeclaration1:) 
	#(256 3 #reduceActionForImportClause4:) 
	#(182 4 #reduceActionForBreakStatement1:) 
	#(181 4 #reduceActionForContinueStatement1:) 
	#(183 4 #reduceActionForReturnStatement1:) 
	#(215 1 #liftFirstValue:) 
	#(216 2 #reduceActionForInitializer1:) 
	#(204 3 #reduceActionForPropertyDefinitionList2:) 
	#(143 1 #reduceActionForPropertyDefinitionList1:) 
	#(114 4 #reduceActionForTemplateLiteral2:) 
	#(147 4 #reduceActionForMemberExpression2:) 
	#(154 4 #reduceActionForCallExpression4:) 
	#(202 3 #reduceActionForPropertyDefinitionList2:) 
	#(234 1 #reduceActionForModuleBodyopt2:) 
	#(228 1 #reduceActionForModuleBodyopt2:) 
	#(127 4 #reduceActionForElementList3:) 
	#(238 1 #liftFirstValue:) 
	#(214 2 #reduceActionForBindingRestElement2:) 
	#(207 4 #reduceActionForArrayBindingPattern1:) 
	#(210 3 #reduceActionForBindingElementList2:) 
	#(211 3 #reduceActionForBindingProperty2:) 
	#(206 4 #reduceActionForObjectBindingPattern3:) 
	#(208 3 #reduceActionForPropertyDefinitionList2:) 
	#(155 3 #reduceActionForArgumentList3:) 
	#(226 1 #liftFirstValue:) 
	#(219 0 #reduceActionForModuleBodyopt1:) 
	#(196 5 #reduceActionForSwitchStatement1:) 
	#(267 3 #reduceActionForExportSpecifier2:) 
	#(265 4 #reduceActionForExportClause3:) 
	#(266 3 #reduceActionForPropertyDefinitionList2:) 
	#(247 1 #reduceActionForEmptyStatement1:) 
	#(247 1 #liftFirstValue:) 
	#(243 1 #reduceActionForModuleBodyopt2:) 
	#(245 1 #reduceActionForModuleBodyopt2:) 
	#(246 1 #reduceActionForModuleItemList1:) 
	#(264 3 #reduceActionForImportSpecifier2:) 
	#(261 4 #reduceActionForNamedImports3:) 
	#(263 3 #reduceActionForPropertyDefinitionList2:) 
	#(184 5 #reduceActionForWithStatement1:) 
	#(179 5 #reduceActionForIfStatement2:) 
	#(195 5 #reduceActionForIterationStatement2:) 
	#(145 2 #reduceActionForTemplateMiddleList1:) 
	#(143 2 #reduceActionForTemplateSpans2:) 
	#(170 5 #reduceActionForConditionalExpression2:) 
	#(236 3 #reduceActionForConciseBody2:) 
	#(230 3 #reduceActionForFormalParameterList3:) 
	#(232 3 #reduceActionForPropertyDefinitionList2:) 
	#(119 6 #reduceActionForCoverParenthesizedExpressionAndArrowParameterList3:) 
	#(155 4 #reduceActionForArgumentList4:) 
	#(219 1 #reduceActionForModuleBodyopt2:) 
	#(221 1 #reduceActionForModuleItemList1:) 
	#(247 2 #reduceActionForClassElement2:) 
	#(241 4 #reduceActionForClassTail1:) 
	#(246 2 #reduceActionForModuleItemList2:) 
	#(145 3 #reduceActionForTemplateMiddleList2:) 
	#(207 6 #reduceActionForArrayBindingPattern3:) 
	#(224 5 #reduceActionForCatch1:) 
	#(218 3 #reduceActionForCaseBlock1:) 
	#(221 2 #reduceActionForModuleItemList2:) 
	#(195 7 #reduceActionForIterationStatement6:) 
	#(195 7 #reduceActionForIterationStatement9:) 
	#(195 7 #reduceActionForIterationStatement8:) 
	#(195 7 #reduceActionForIterationStatement11:) 
	#(179 7 #reduceActionForIfStatement1:) 
	#(195 7 #reduceActionForIterationStatement1:) 
	#(239 1 #reduceActionForModuleBodyopt2:) 
	#(135 7 #reduceActionForMethodDefinition3:) 
	#(135 7 #reduceActionForMethodDefinition1:) 
	#(110 8 #reduceActionForFunctionExpression1:) 
	#(195 8 #reduceActionForIterationStatement10:) 
	#(195 8 #reduceActionForIterationStatement7:) 
	#(195 8 #reduceActionForIterationStatement5:) 
	#(237 8 #reduceActionForGeneratorMethod1:) 
	#(135 8 #reduceActionForMethodDefinition4:) 
	#(112 9 #reduceActionForGeneratorExpression1:) 
	#(222 4 #reduceActionForCaseClause1:) 
	#(220 3 #reduceActionForDefaultClause1:) 
	#(218 5 #reduceActionForCaseBlock2:) 
	#(193 8 #reduceActionForFunctionExpression1:) 
	#(195 9 #reduceActionForIterationStatement3:) 
	#(194 9 #reduceActionForGeneratorExpression1:) 
	#(195 10 #reduceActionForIterationStatement4:)
	).
]

{ #category : #generated }
JSParser >> symbolNames [
	^ #('">>>"' '"<"' '">>"' '"<<"' '">"' '"<="' '"!"' '"**"' '">="' '"%"' '"*"' '"~"' '"^"' '"|"' '"&"' '"!=="' '"false"' '"-"' '"in"' '"=="' '"instanceof"' '"==="' '"!="' '"["' '"]"' '"..."' '","' '"{"' '":"' '"else"' '"this"' '"="' '")"' '"("' '"&&"' '"void"' '"typeof"' '"delete"' '"--"' '"+"' '"||"' '"new"' '"super"' '"."' '"++"' '"target"' '"debugger"' '"function"' '"finally"' '"catch"' '"=>"' '"get"' '"?"' '"default"' '"set"' '"try"' '"throw"' '"switch"' '"export"' '"null"' '"from"' '"as"' '"true"' '"case"' '"class"' '"extends"' '"yield"' '"import"' '"static"' '">>>="' '"&="' '">>="' '"<<="' '"with"' '"|="' '"*="' '"%="' '"^="' '"-="' '"+="' '"let"' '"const"' '"break"' '"of"' '"continue"' '"return"' '"for"' '"if"' '"do"' '"while"' '"var"' '<semicolon>' '<slash>' '<slashEqual>' '<rightBrace>' '<comment>' '<identifier>' '<identifierName>' '<whitespace>' '<string>' '<numeric>' '<regular_expression>' '<no_substitution_template>' '<template_head>' '<template_middle>' '<template_end>' '<patternToken>' 'ArrayLiteral' 'ObjectLiteral' 'FunctionExpression' 'ClassExpression' 'GeneratorExpression' 'RegularExpressionLiteral' 'TemplateLiteral' 'ParenthesizedExpression' 'PrimaryExpression' 'ParameterListopt' 'BindingPattern' 'CoverParenthesizedExpressionAndArrowParameterList' 'ParameterList' 'BindingElement' 'NullLiteral' 'BooleanLiteral' 'NumericLiteral' 'StringLiteral' 'Elisionopt' 'ElementList' 'Elision' 'AssignmentExpression' 'SpreadElement' 'PropertyDefinitionList' 'PropertyDefinition' 'CoverInitializedName' 'PropertyName' 'MethodDefinition' 'LiteralPropertyName' 'Expression' 'Initializer' 'Initializeropt' 'Literal' 'StartTemplateLiteral' 'Identifieropt' 'TemplateSpans' 'Identifier' 'TemplateMiddleList' 'B e g i n' 'MemberExpression' 'SuperProperty' 'MetaProperty' 'Arguments' 'NewTarget' 'NewExpression' 'SuperCall' 'CallExpression' 'ArgumentList' 'LeftHandSideExpression' 'UnaryExpression' 'UpdateExpression' 'ExponentiationExpression' 'MultiplicativeExpression' 'AdditiveExpression' 'ShiftExpression' 'RelationalExpression' 'EqualityExpression' 'BitwiseANDExpression' 'BitwiseXORExpression' 'BitwiseORExpression' 'LogicalANDExpression' 'LogicalORExpression' 'ConditionalExpression' 'YieldExpression' 'ArrowFunction' 'AssignmentOperator' 'Expressionopt' 'BlockStatement' 'VariableStatement' 'EmptyStatement' 'ExpressionStatement' 'IfStatement' 'BreakableStatement' 'ContinueStatement' 'BreakStatement' 'ReturnStatement' 'WithStatement' 'Module' 'goal' 'TryStatement' 'DebuggerStatement' 'HoistableDeclaration' 'ClassDeclaration' 'LexicalDeclaration' 'Declaration' 'FunctionDeclaration' 'GeneratorDeclaration' 'IterationStatement' 'SwitchStatement' 'Block' 'StatementListopt' 'StatementList' 'StatementListItem' 'LetOrConst' 'BindingList' 'LexicalBinding' 'VariableDeclarationList' 'VariableDeclaration' 'ObjectBindingPattern' 'ArrayBindingPattern' 'BindingPropertyList' 'BindingRestElementopt' 'BindingElementList' 'BindingProperty' 'BindingElisionElement' 'SingleNameBinding' 'BindingRestElement' 'ForBinding' 'ForDeclaration' 'CheckEOL' 'CaseBlock' 'CaseClausesopt' 'DefaultClause' 'CaseClauses' 'CaseClause' 'LabeledItem' 'Catch' 'Finally' 'CatchParameter' 'FormalParameters' 'FunctionBody' 'StrictFormalParameters' 'FormalParameterList' 'FunctionRestParameter' 'FormalsList' 'FormalParameter' 'FunctionStatementList' 'ArrowParameters' 'ConciseBody' 'GeneratorMethod' 'PropertySetParameterList' 'GeneratorBody' 'staropt' 'ClassTail' 'ClassHeritageopt' 'ClassBodyopt' 'ClassHeritage' 'ClassBody' 'ClassElementList' 'ClassElement' 'ScriptBodyopt' 'ScriptBody' 'ModuleBodyopt' 'ModuleBody' 'ModuleItemList' 'ModuleItem' 'ImportDeclaration' 'ExportDeclaration' 'ImportClause' 'FromClause' 'ModuleSpecifier' 'ImportedDefaultBinding' 'NameSpaceImport' 'NamedImports' 'ImportedBinding' 'ImportsList' 'ImportSpecifier' 'ExportClause' 'ExportsList' 'ExportSpecifier' 'Statement' 'Script' 'E O F' 'error' 'ThrowStatement' 'LabelledStatement' 'ComputedPropertyName')
]

{ #category : #generated }
JSParser >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JSArrayLiteralNode #JSObjectLiteralNode #JSFunctionNode #JSClassExpressionNode #JSGeneratorFunctionNode #JSRegularExpressionLiteralNode #JSTemplateLiteralNode #JSExpressionNode #JSExpressionNode #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #JSVariableDeclarationNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #JSExpressionNode #JSSpreadExpressionNode #OrderedCollection #JSProgramNode #JSPropertyAssignmentNode #JSProgramNode #JSMethodDefinitionNode #JSNameExpressionNode #JSExpressionNode #OrderedCollection #OrderedCollection #JSLiteralNode #ByteSymbol #JSNameExpressionNode #OrderedCollection #JSNameExpressionNode #OrderedCollection #JSModuleNode #JSExpressionNode #JSExpressionNode #JSNewTargetExpressionNode #OrderedCollection #JSNewTargetExpressionNode #JSExpressionNode #JSSuperCallExpressionNode #JSExpressionNode #OrderedCollection #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSExpressionNode #JSYieldExpressionNode #JSArrowFunctionNode #SmaCCToken #JSExpressionNode #JSBlockStatementNode #JSVariableStatementNode #JSEmptyStatementNode #JSExpressionStatementNode #JSIfStatementNode #JSStatementNode #JSContinueStatementNode #JSBreakStatementNode #JSReturnStatementNode #JSWithStatementNode #JSModuleNode #JSModuleNode #JSTryStatementNode #JSDebuggerStatementNode #JSFunctionNode #JSClassExpressionNode #JSLexicalDeclarationNode #JSProgramNode #JSFunctionNode #JSGeneratorFunctionNode #JSStatementNode #JSSwitchStatementNode #JSBlockStatementNode #OrderedCollection #OrderedCollection #JSStatementNode #SmaCCToken #OrderedCollection #JSProgramNode #OrderedCollection #JSProgramNode #JSObjectBindingPatternNode #JSArrayBindingPatternNode #OrderedCollection #JSRestVariableDeclarationNode #OrderedCollection #JSProgramNode #OrderedCollection #JSVariableDeclarationNode #JSRestVariableDeclarationNode #JSProgramNode #OrderedCollection nil #OrderedCollection #OrderedCollection #JSDefaultClauseNode #OrderedCollection #JSCaseClauseNode #JSStatementNode #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSRestVariableDeclarationNode #OrderedCollection #JSVariableDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JSGeneratorMethodDefinitionNode #JSVariableDeclarationNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JSProgramNode #JSImportDeclarationNode #JSExportDeclarationNode #OrderedCollection #OrderedCollection #SmaCCToken #JSNameExpressionNode #JSNameSpaceImportNode #JSNamedImportsNode #JSNameExpressionNode #OrderedCollection #JSImportSpecifierNode #OrderedCollection #OrderedCollection #JSExportSpecifierNode #JSStatementNode #JSScriptNode #SmaCCToken #SmaCCToken #JSThrowStatementNode #JSLabelledStatementNode #JSComputedPropertyNameNode)
]

{ #category : #generated }
JSParser >> transitionTable [
^#(
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 109 0 59 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 129 0 68 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 1 213 0 175 1 213 0 176 1 213 0 177 1 213 0 178 1 213 0 179 1 213 0 180 1 213 0 181 1 213 0 182 1 213 0 183 1 213 0 184 1 161 0 185 1 161 0 186 1 213 0 187 1 213 0 188 1 213 0 191 1 213 0 195 1 213 0 196 1 213 0 197 1 213 0 200 1 193 0 201 1 197 0 235 1 201 0 250 1 205 0 251 1 209 0 252 1 213 0 253 1 213 0 254 1 213 0 255 1 213 1 12 0 10 1 14 1 213 1 16 1 213 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 245 0 129 1 245 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 245 0 170 1 245 0 171 1 245 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 1 249 0 175 1 249 0 176 1 249 0 177 1 249 0 178 1 249 0 179 1 249 0 180 1 249 0 181 1 249 0 182 1 249 0 183 1 249 0 184 1 249 0 187 1 249 0 188 1 249 0 195 1 249 0 196 1 249 0 197 1 197 0 235 1 249 1 12 1 249 1 16 1 249 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 1 253 0 199 2 1 0 200 1 193 0 201 1 197 0 235 2 5 0 248 2 9 0 249 2 1 1 12 2 13 1 13 0 14 1 14 2 1 1 16 2 1 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 109 0 59 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 129 0 68 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 1 213 0 175 1 213 0 176 1 213 0 177 1 213 0 178 1 213 0 179 1 213 0 180 1 213 0 181 1 213 0 182 1 213 0 183 1 213 0 184 2 17 0 185 1 213 0 187 1 213 0 188 1 213 0 191 1 213 0 195 1 213 0 196 1 213 0 197 1 213 0 200 1 193 0 201 1 197 0 235 1 201 0 250 1 205 0 251 1 209 0 252 1 213 0 253 1 213 0 254 1 213 0 255 1 213 1 12 0 10 1 14 1 213 1 16 1 213 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 33 0 157 2 33 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 37 0 157 2 37 0 158] 
#[0 0 18 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 41 0 157 2 41 0 158] 
#[1 0 22 0 7 0 22 0 12 0 22 0 17 0 22 0 18 0 22 0 24 0 22 0 25 0 22 0 26 2 45 0 27 0 22 0 28 0 22 0 31 0 22 0 34 0 22 0 36 0 22 0 37 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 42 0 22 0 43 0 22 0 45 0 22 0 48 0 22 0 60 0 22 0 63 0 22 0 65 0 22 0 67 0 22 0 97 0 22 0 100 0 22 0 101 0 22 0 102 0 22 0 103 0 22 0 104 2 49 0 126 2 53 0 127 2 57 0 128] 
#[1 0 25 0 7 2 61 0 11 0 29 0 12 0 245 0 17 0 37 0 18 2 65 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 2 69 0 52 2 73 0 55 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 7 0 95 0 181 0 97 2 85 0 100 2 81 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 2 81 0 124 2 85 0 125 1 5 0 129 2 89 0 131 2 93 0 132 2 93 0 133 2 101 0 134 2 93 0 135 2 101 0 136 1 5 0 137 1 21 0 140 1 13 0 141 2 113 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 2 117 0 198 2 121 0 199 2 1 0 200 1 193 0 201 1 197 0 235 2 93 0 237 2 1 1 12 2 1 1 16 2 1 1 17 2 101 1 18] 
#[0 0 30 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 2 133 0 24 0 34 0 27 2 137 0 28 0 49 0 31 0 34 0 33 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 2 141 0 117 2 145 0 118 0 237 0 119 2 149 0 120 2 153 0 121 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 2 157 0 129 2 157 0 137 1 21 0 140 1 13 0 141 2 161 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 2 157 0 170 2 157 0 171 2 157 0 172 2 145 0 206 2 145 0 207 2 153 0 213 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 177 0 157 2 177 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 181 0 157 2 181 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 185 0 157 2 185 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 189 0 157 2 189 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 193 0 157 2 193 0 158] 
#[1 0 245 0 17 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 77 0 42 2 197 0 43 2 201 0 44 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 2 205 0 108 2 205 0 109 2 205 0 110 2 205 0 111 2 205 0 112 2 205 0 113 2 205 0 114 2 205 0 115 2 205 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 2 205 0 140 1 13 0 141 2 205 0 144 2 205 0 147 2 205 0 148 2 205 0 149 2 205 0 151 2 209 0 152] 
#[1 2 213 0 24 2 217 0 34 2 221 0 44 2 225 0 150] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 2 229 0 157 2 229 0 158] 
#[0 2 233 0 92] 
#[1 2 237 0 11 0 38 0 34 1 241 0 97 2 241 0 142 2 241 0 144] 
#[1 2 249 0 28 2 253 0 197] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 3 1 0 129 3 1 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 3 1 0 170 3 1 0 171 3 1 0 172 1 197 0 235] 
#[0 3 5 0 34] 
#[1 3 9 0 11 3 13 0 28 3 17 0 48 3 21 0 54 3 25 0 65 1 193 0 81 1 193 0 82 0 173 0 91 3 29 0 176 3 45 0 189 3 45 0 190 3 45 0 191 3 45 0 192 3 45 0 193 3 45 0 194 1 193 0 201 3 57 1 9] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 18 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 38 0 28 0 38 0 66 1 241 0 97 3 61 0 142 3 61 0 144] 
#[1 0 46 0 7 3 69 0 11 0 46 0 12 0 46 0 17 0 46 0 18 0 46 0 24 0 46 0 28 0 46 0 31 0 46 0 34 0 46 0 36 0 46 0 37 0 46 0 38 0 46 0 39 0 46 0 40 0 46 0 42 0 46 0 43 0 46 0 45 0 46 0 48 0 46 0 60 0 46 0 63 0 46 0 65 0 46 0 67 0 46 0 97 0 46 0 100 0 46 0 101 0 46 0 102 0 46 0 103 0 46 0 104 3 69 0 240] 
#[1 3 73 0 11 3 77 0 28 1 241 0 97 3 93 0 100 3 93 0 125 3 97 0 144 3 89 1 0 3 93 1 2 3 97 1 3 3 101 1 4 3 105 1 5 3 97 1 6] 
#[0 3 113 0 34] 
#[0 0 50 0 24 0 28 0 97] 
#[0 0 50 0 24 0 28 0 97] 
#[1 0 54 0 92 0 54 0 97 3 117 0 217] 
#[1 0 54 0 92 0 54 0 97 3 121 0 217] 
#[1 0 54 0 7 0 54 0 12 0 54 0 17 0 54 0 18 0 54 0 24 0 54 0 28 0 54 0 31 0 54 0 34 0 54 0 36 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 42 0 54 0 43 0 54 0 45 0 54 0 48 0 54 0 60 0 54 0 63 0 54 0 65 0 54 0 67 0 54 0 92 0 54 0 97 0 54 0 100 0 54 0 101 0 54 0 102 0 54 0 103 0 54 0 104 3 125 0 217] 
#[0 3 129 0 34] 
#[0 3 133 0 34] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 3 137 0 175 3 137 0 176 3 137 0 177 3 137 0 178 3 137 0 179 3 137 0 180 3 137 0 181 3 137 0 182 3 137 0 183 3 137 0 184 3 137 0 187 3 137 0 188 3 137 0 195 3 137 0 196 3 137 0 197 1 197 0 235 3 137 1 12 3 137 1 16 3 137 1 17] 
#[0 3 141 0 34] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 3 153 0 118 3 157 0 144 3 161 0 204 3 165 0 205 3 153 0 206 3 153 0 207] 
#[0 0 58 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 62 0 1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 8 0 62 0 9 0 62 0 10 0 62 0 11 0 62 0 13 0 62 0 14 0 62 0 15 0 62 0 16 0 62 0 18 0 62 0 19 0 62 0 20 0 62 0 21 0 62 0 22 0 62 0 23 0 62 0 24 0 62 0 27 0 11 0 29 0 62 0 32 0 62 0 34 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 44 0 62 0 45 0 62 0 51 0 62 0 53 0 62 0 70 0 62 0 71 0 62 0 72 0 62 0 73 0 62 0 75 0 62 0 76 0 62 0 77 0 62 0 78 0 62 0 79 0 62 0 80 0 62 0 92 0 62 0 93 0 62 0 94 0 62 0 95 0 62 0 103 0 62 0 104] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 70 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 74 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 90 0 51] 
#[0 0 94 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 98 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 102 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 106 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 110 0 25 0 27 0 29 0 33 0 92 0 105 0 106 1 14] 
#[1 3 173 0 27 3 177 0 92] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 3 181 0 104] 
#[1 0 82 0 1 0 82 0 2 0 82 0 3 0 82 0 4 0 82 0 5 0 82 0 6 0 82 0 8 0 82 0 9 0 82 0 10 0 82 0 11 0 82 0 13 0 82 0 14 0 82 0 15 0 82 0 16 0 82 0 18 0 82 0 19 0 82 0 20 0 82 0 21 0 82 0 22 0 82 0 23 0 82 0 24 0 82 0 25 0 82 0 27 0 82 0 29 0 82 0 32 0 82 0 33 0 82 0 34 0 82 0 35 0 82 0 39 0 82 0 40 0 82 0 41 0 82 0 44 0 82 0 45 0 114 0 51 0 82 0 53 0 82 0 70 0 82 0 71 0 82 0 72 0 82 0 73 0 82 0 75 0 82 0 76 0 82 0 77 0 82 0 78 0 82 0 79 0 82 0 80 0 82 0 84 0 82 0 92 0 82 0 93 0 82 0 94 0 82 0 95 0 82 0 103 0 82 0 104 0 82 0 105 0 82 0 106 0 82 1 14] 
#[1 0 118 0 1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 11 0 118 0 13 0 118 0 14 0 118 0 15 0 118 0 16 0 118 0 18 0 118 0 19 0 118 0 20 0 118 0 21 0 118 0 22 0 118 0 23 3 185 0 24 0 118 0 25 0 118 0 27 0 118 0 28 0 118 0 29 0 118 0 32 0 118 0 33 2 217 0 34 0 118 0 35 0 118 0 39 0 118 0 40 0 118 0 41 3 189 0 44 0 118 0 45 0 118 0 53 0 118 0 70 0 118 0 71 0 118 0 72 0 118 0 73 0 118 0 75 0 118 0 76 0 118 0 77 0 118 0 78 0 118 0 79 0 118 0 80 0 118 0 84 0 118 0 92 0 118 0 93 0 118 0 94 0 118 0 95 0 197 0 103 0 6 0 104 0 118 0 105 0 118 0 106 3 193 0 114 1 13 0 141 3 197 0 150 0 118 1 14] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 28 0 29 0 32 0 33 0 35 0 39 0 40 0 41 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 105 0 106 1 14] 
#[0 0 130 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 126 0 1 0 126 0 2 0 126 0 3 0 126 0 4 0 126 0 5 0 126 0 6 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 3 201 0 24 0 126 0 25 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 32 0 126 0 33 2 217 0 34 0 126 0 35 0 126 0 39 0 126 0 40 0 126 0 41 3 205 0 44 0 126 0 45 0 126 0 53 0 126 0 70 0 126 0 71 0 126 0 72 0 126 0 73 0 126 0 75 0 126 0 76 0 126 0 77 0 126 0 78 0 126 0 79 0 126 0 80 0 126 0 84 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 95 0 197 0 103 0 6 0 104 0 126 0 105 0 126 0 106 3 209 0 114 1 13 0 141 3 213 0 150 0 126 1 14] 
#[1 0 134 0 1 0 134 0 2 0 134 0 3 0 134 0 4 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 25 0 134 0 27 0 134 0 29 4 17 0 32 0 134 0 33 0 134 0 35 3 221 0 39 0 134 0 40 0 134 0 41 3 225 0 45 0 134 0 53 4 17 0 70 4 17 0 71 4 17 0 72 4 17 0 73 4 17 0 75 4 17 0 76 4 17 0 77 4 17 0 78 4 17 0 79 4 17 0 80 0 134 0 84 0 134 0 92 0 134 0 93 4 17 0 94 0 134 0 95 0 134 0 105 0 134 0 106 4 17 0 173 0 134 1 14] 
#[1 0 138 0 1 0 138 0 2 0 138 0 3 0 138 0 4 0 138 0 5 0 138 0 6 4 21 0 8 0 138 0 9 0 138 0 10 0 138 0 11 0 138 0 13 0 138 0 14 0 138 0 15 0 138 0 16 0 138 0 18 0 138 0 19 0 138 0 20 0 138 0 21 0 138 0 22 0 138 0 23 0 138 0 25 0 138 0 27 0 138 0 29 0 138 0 33 0 138 0 35 0 138 0 40 0 138 0 41 0 138 0 53 0 138 0 84 0 138 0 92 0 138 0 93 0 138 0 95 0 138 0 105 0 138 0 106 0 138 1 14] 
#[0 0 142 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 146 0 1 0 2 0 3 0 4 0 5 0 6 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[1 0 150 0 1 0 150 0 2 0 150 0 3 0 150 0 4 0 150 0 5 0 150 0 6 0 150 0 9 4 25 0 10 4 29 0 11 0 150 0 13 0 150 0 14 0 150 0 15 0 150 0 16 0 150 0 18 0 150 0 19 0 150 0 20 0 150 0 21 0 150 0 22 0 150 0 23 0 150 0 25 0 150 0 27 0 150 0 29 0 150 0 33 0 150 0 35 0 150 0 40 0 150 0 41 0 150 0 53 0 150 0 84 0 150 0 92 4 33 0 93 0 150 0 95 0 150 0 105 0 150 0 106 0 150 1 14] 
#[1 0 154 0 1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 5 0 154 0 6 0 154 0 9 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 4 37 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 154 0 23 0 154 0 25 0 154 0 27 0 154 0 29 0 154 0 33 0 154 0 35 4 41 0 40 0 154 0 41 0 154 0 53 0 154 0 84 0 154 0 92 0 154 0 95 0 154 0 105 0 154 0 106 0 154 1 14] 
#[1 4 45 0 1 0 158 0 2 4 49 0 3 4 53 0 4 0 158 0 5 0 158 0 6 0 158 0 9 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 25 0 158 0 27 0 158 0 29 0 158 0 33 0 158 0 35 0 158 0 41 0 158 0 53 0 158 0 84 0 158 0 92 0 158 0 95 0 158 0 105 0 158 0 106 0 158 1 14] 
#[1 4 57 0 2 4 61 0 5 4 65 0 6 4 69 0 9 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 4 73 0 19 0 162 0 20 4 77 0 21 0 162 0 22 0 162 0 23 0 162 0 25 0 162 0 27 0 162 0 29 0 162 0 33 0 162 0 35 0 162 0 41 0 162 0 53 0 162 0 84 0 162 0 92 0 162 0 95 0 162 0 105 0 162 0 106 0 162 1 14] 
#[1 0 166 0 13 0 166 0 14 0 166 0 15 4 81 0 16 4 85 0 20 4 89 0 22 4 93 0 23 0 166 0 25 0 166 0 27 0 166 0 29 0 166 0 33 0 166 0 35 0 166 0 41 0 166 0 53 0 166 0 84 0 166 0 92 0 166 0 95 0 166 0 105 0 166 0 106 0 166 1 14] 
#[1 0 170 0 13 0 170 0 14 4 97 0 15 0 170 0 25 0 170 0 27 0 170 0 29 0 170 0 33 0 170 0 35 0 170 0 41 0 170 0 53 0 170 0 84 0 170 0 92 0 170 0 95 0 170 0 105 0 170 0 106 0 170 1 14] 
#[1 4 101 0 13 0 174 0 14 0 174 0 25 0 174 0 27 0 174 0 29 0 174 0 33 0 174 0 35 0 174 0 41 0 174 0 53 0 174 0 84 0 174 0 92 0 174 0 95 0 174 0 105 0 174 0 106 0 174 1 14] 
#[1 4 105 0 14 0 178 0 25 0 178 0 27 0 178 0 29 0 178 0 33 0 178 0 35 0 178 0 41 0 178 0 53 0 178 0 84 0 178 0 92 0 178 0 95 0 178 0 105 0 178 0 106 0 178 1 14] 
#[1 0 182 0 25 0 182 0 27 0 182 0 29 0 182 0 33 4 109 0 35 0 182 0 41 0 182 0 53 0 182 0 84 0 182 0 92 0 182 0 95 0 182 0 105 0 182 0 106 0 182 1 14] 
#[1 0 186 0 25 0 186 0 27 0 186 0 29 0 186 0 33 4 113 0 41 4 117 0 53 0 186 0 84 0 186 0 92 0 186 0 95 0 186 0 105 0 186 0 106 0 186 1 14] 
#[0 0 190 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 0 190 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 0 190 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 198 1 14] 
#[0 0 0 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 202 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 206 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 206 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 210 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 214 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 4 121 0 118 4 125 0 144 4 129 0 202 4 133 0 203 4 121 0 206 4 121 0 207] 
#[0 4 137 0 51] 
#[0 0 218 1 14] 
#[0 0 222 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 109 0 59 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 129 0 68 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 4 141 0 175 4 141 0 176 4 141 0 177 4 141 0 178 4 141 0 179 4 141 0 180 4 141 0 181 4 141 0 182 4 141 0 183 4 141 0 184 4 141 0 187 4 141 0 188 4 141 0 191 4 141 0 195 4 141 0 196 4 141 0 197 4 141 0 200 1 193 0 201 1 197 0 235 4 141 0 253 4 141 0 254 4 141 0 255 4 141 1 12 0 226 1 14 4 141 1 16 4 141 1 17] 
#[0 0 230 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 214 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 214 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 202 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 194 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 2 61 0 11 4 145 0 24 2 69 0 52 2 73 0 55 2 77 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 2 89 0 131 2 93 0 132 2 93 0 133 2 101 0 134 2 93 0 135 2 101 0 136 4 157 0 144 2 93 0 237 2 101 1 18] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 51 0 53 0 61 0 66 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 3 173 0 27 0 0 1 14] 
#[0 0 0 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 4 161 0 175 4 161 0 176 4 161 0 177 4 161 0 178 4 161 0 179 4 161 0 180 4 161 0 181 4 161 0 182 4 161 0 183 4 161 0 184 4 161 0 187 4 161 0 188 4 161 0 191 4 161 0 195 4 161 0 196 4 161 0 197 4 161 0 200 1 193 0 201 1 197 0 235 4 161 1 12 0 234 1 14 4 161 1 16 4 161 1 17] 
#[0 0 238 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 60 0 63 0 64 0 65 0 67 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 0 242 1 14] 
#[0 0 246 1 14] 
#[0 0 0 1 14] 
#[0 0 0 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 2 157 0 129 2 157 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 2 157 0 170 2 157 0 171 2 157 0 172 1 197 0 235] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 134 0 1 0 134 0 2 0 134 0 3 0 134 0 4 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 18 0 134 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 25 0 134 0 27 0 134 0 29 0 134 0 33 0 134 0 35 3 221 0 39 0 134 0 40 0 134 0 41 3 225 0 45 0 134 0 53 0 134 0 84 0 134 0 92 0 134 0 93 0 134 0 95 0 134 0 105 0 134 0 106 0 134 1 14] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 254 0 7 0 12 0 17 0 18 0 24 0 25 0 26 0 27 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 4 165 0 25 4 169 0 26 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 4 173 0 129 4 177 0 130 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 4 173 0 170 4 173 0 171 4 173 0 172 1 197 0 235] 
#[1 4 181 0 25 4 185 0 27 4 189 0 128] 
#[1 1 2 0 7 1 2 0 12 1 2 0 17 1 2 0 18 1 2 0 24 1 2 0 25 1 2 0 26 4 193 0 27 1 2 0 28 1 2 0 31 1 2 0 34 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 40 1 2 0 42 1 2 0 43 1 2 0 45 1 2 0 48 1 2 0 60 1 2 0 63 1 2 0 65 1 2 0 67 1 2 0 97 1 2 0 100 1 2 0 101 1 2 0 102 1 2 0 103 1 2 0 104] 
#[1 4 145 0 24 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 4 197 0 134 4 197 0 136 4 197 0 144 4 197 1 18] 
#[1 0 15 0 7 0 19 0 12 0 23 0 17 0 27 0 18 0 31 0 24 0 22 0 25 0 22 0 26 2 45 0 27 0 35 0 28 0 39 0 31 0 43 0 34 0 47 0 36 0 51 0 37 0 55 0 38 0 59 0 39 0 63 0 40 0 67 0 42 0 71 0 43 0 75 0 45 0 79 0 48 0 83 0 60 0 87 0 63 0 91 0 65 0 95 0 67 0 99 0 97 0 103 0 100 0 107 0 101 0 111 0 102 0 115 0 103 0 119 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 2 49 0 126 2 53 0 127 2 57 0 128 4 205 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 4 205 0 170 4 205 0 171 4 205 0 172 1 197 0 235] 
#[1 4 145 0 24 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 4 209 0 134 4 209 0 136 4 209 0 144 4 209 1 18] 
#[1 4 145 0 24 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 4 213 0 134 4 213 0 136 4 213 0 144 4 213 1 18] 
#[0 1 6 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 102 0 1 0 102 0 2 0 102 0 3 0 102 0 4 0 102 0 5 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 11 0 102 0 13 0 102 0 14 0 102 0 15 0 102 0 16 0 102 0 18 0 102 0 19 0 102 0 20 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 24 0 102 0 27 1 10 0 29 0 102 0 32 0 123 0 34 0 102 0 35 0 102 0 39 0 102 0 40 0 102 0 41 0 102 0 44 0 102 0 45 0 102 0 53 0 102 0 70 0 102 0 71 0 102 0 72 0 102 0 73 0 102 0 75 0 102 0 76 0 102 0 77 0 102 0 78 0 102 0 79 0 102 0 80 0 102 0 92 0 102 0 93 0 102 0 94 0 102 0 103 0 102 0 104] 
#[1 0 106 0 1 0 106 0 2 0 106 0 3 0 106 0 4 0 106 0 5 0 106 0 6 0 106 0 8 0 106 0 9 0 106 0 10 0 106 0 11 0 106 0 13 0 106 0 14 0 106 0 15 0 106 0 16 0 106 0 18 0 106 0 19 0 106 0 20 0 106 0 21 0 106 0 22 0 106 0 23 0 106 0 24 0 106 0 27 1 10 0 29 0 106 0 32 0 127 0 34 0 106 0 35 0 106 0 39 0 106 0 40 0 106 0 41 0 106 0 44 0 106 0 45 0 106 0 53 0 106 0 70 0 106 0 71 0 106 0 72 0 106 0 73 0 106 0 75 0 106 0 76 0 106 0 77 0 106 0 78 0 106 0 79 0 106 0 80 0 106 0 92 0 106 0 93 0 106 0 94 0 106 0 103 0 106 0 104] 
#[1 4 217 0 27 4 221 0 95] 
#[0 1 14 0 27 0 95] 
#[0 1 18 0 27 0 95] 
#[1 4 225 0 29 4 229 0 34] 
#[0 1 18 0 27 0 95] 
#[0 1 22 0 29 0 34] 
#[1 0 82 0 1 0 82 0 2 0 82 0 3 0 82 0 4 0 82 0 5 0 82 0 6 0 82 0 8 0 82 0 9 0 82 0 10 0 82 0 11 0 82 0 13 0 82 0 14 0 82 0 15 0 82 0 16 0 82 0 18 0 82 0 19 0 82 0 20 0 82 0 21 0 82 0 22 0 82 0 23 0 82 0 24 0 131 0 27 1 26 0 29 0 135 0 32 0 139 0 34 0 82 0 35 0 82 0 39 0 82 0 40 0 82 0 41 0 82 0 44 0 82 0 45 0 114 0 51 0 82 0 53 0 82 0 70 0 82 0 71 0 82 0 72 0 82 0 73 0 82 0 75 0 82 0 76 0 82 0 77 0 82 0 78 0 82 0 79 0 82 0 80 0 82 0 92 0 82 0 93 0 82 0 94 1 18 0 95 0 82 0 103 0 82 0 104 4 237 0 138] 
#[0 4 241 0 95] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 1 30 0 54 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 1 30 0 64 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 1 30 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 4 161 0 175 4 161 0 176 4 161 0 177 4 161 0 178 4 161 0 179 4 161 0 180 4 161 0 181 4 161 0 182 4 161 0 183 4 161 0 184 4 161 0 187 4 161 0 188 4 161 0 191 4 161 0 195 4 161 0 196 4 161 0 197 4 161 0 200 1 193 0 201 1 197 0 235 4 161 1 12 4 161 1 16 4 161 1 17] 
#[0 1 34 0 11 0 24 0 27 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 1 22 0 29 0 34] 
#[1 0 22 0 7 0 22 0 12 0 22 0 17 0 22 0 18 0 22 0 24 0 22 0 25 0 22 0 26 2 45 0 27 0 22 0 28 0 22 0 31 0 22 0 34 0 22 0 36 0 22 0 37 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 42 0 22 0 43 0 22 0 45 0 22 0 48 0 22 0 60 0 22 0 63 0 22 0 65 0 22 0 67 0 22 0 97 0 22 0 100 0 22 0 101 0 22 0 102 0 22 0 103 0 22 0 104 4 245 0 126 2 53 0 127 2 57 0 128 4 249 0 210 4 253 0 212] 
#[1 2 61 0 11 4 145 0 24 2 69 0 52 2 73 0 55 5 1 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 2 89 0 131 2 93 0 132 2 93 0 133 5 5 0 134 2 93 0 135 5 5 0 136 5 9 0 144 5 13 0 208 5 17 0 211 5 17 0 213 2 93 0 237 5 5 1 18] 
#[1 5 25 0 27 5 29 0 33] 
#[1 1 38 0 25 1 38 0 27 4 233 0 32 1 38 0 33 1 38 0 95 5 33 0 138 5 37 0 139] 
#[1 0 143 0 27 1 42 0 33] 
#[0 1 46 0 27 0 33] 
#[1 3 173 0 27 5 45 0 33] 
#[1 0 82 0 1 0 82 0 2 0 82 0 3 0 82 0 4 0 82 0 5 0 82 0 6 0 82 0 8 0 82 0 9 0 82 0 10 0 82 0 11 0 82 0 13 0 82 0 14 0 82 0 15 0 82 0 16 0 82 0 18 0 82 0 19 0 82 0 20 0 82 0 21 0 82 0 22 0 82 0 23 0 82 0 24 0 147 0 25 0 147 0 27 0 135 0 32 0 147 0 33 0 82 0 34 0 82 0 35 0 82 0 39 0 82 0 40 0 82 0 41 0 82 0 44 0 82 0 45 0 114 0 51 0 82 0 53 0 82 0 70 0 82 0 71 0 82 0 72 0 82 0 73 0 82 0 75 0 82 0 76 0 82 0 77 0 82 0 78 0 82 0 79 0 82 0 80 0 82 0 93 0 82 0 94 0 147 0 95 0 82 0 103 0 82 0 104 5 33 0 138 5 49 0 139] 
#[0 1 50 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[0 1 50 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[0 1 54 0 25 0 27 0 33 0 95] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 1 58 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 0 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[1 2 213 0 24 2 221 0 44] 
#[0 5 53 0 46] 
#[1 0 118 0 1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 11 0 118 0 13 0 118 0 14 0 118 0 15 0 118 0 16 0 118 0 18 0 118 0 19 0 118 0 20 0 118 0 21 0 118 0 22 0 118 0 23 3 185 0 24 0 118 0 25 0 118 0 27 0 118 0 28 0 118 0 29 0 118 0 32 0 118 0 33 2 217 0 34 0 118 0 35 0 118 0 39 0 118 0 40 0 118 0 41 3 189 0 44 0 118 0 45 0 118 0 53 0 118 0 70 0 118 0 71 0 118 0 72 0 118 0 73 0 118 0 75 0 118 0 76 0 118 0 77 0 118 0 78 0 118 0 79 0 118 0 80 0 118 0 84 0 118 0 92 0 118 0 93 0 118 0 94 0 118 0 95 0 197 0 103 0 6 0 104 0 118 0 105 0 118 0 106 3 193 0 114 1 13 0 141 5 57 0 150 0 118 1 14] 
#[0 1 62 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 28 0 29 0 32 0 33 0 35 0 39 0 40 0 41 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 61 0 129 5 61 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 61 0 170 5 61 0 171 5 61 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 5 65 0 26 1 237 0 28 0 49 0 31 5 69 0 33 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 73 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 5 77 0 155 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 73 0 170 5 73 0 171 5 73 0 172 1 197 0 235] 
#[0 5 81 0 98] 
#[0 1 66 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 58 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 1 70 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 38 0 34 1 241 0 97 5 85 0 142 5 85 0 144] 
#[0 5 89 0 34] 
#[0 1 74 0 28 0 34 0 66 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 2 117 0 198 2 121 0 199 2 1 0 200 1 193 0 201 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[1 5 93 0 49 5 97 0 50 5 101 0 224 5 105 0 225] 
#[1 3 173 0 27 5 109 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 113 0 129 5 113 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 113 0 170 5 113 0 171 5 113 0 172 1 197 0 235] 
#[1 5 117 0 61 5 121 1 1] 
#[1 5 125 0 95 5 129 0 98 5 133 1 10 5 137 1 11] 
#[1 5 141 0 11 0 38 0 34 1 241 0 97 5 145 0 142 5 145 0 144] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 149 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 149 0 170 5 149 0 171 5 149 0 172 1 197 0 235] 
#[1 0 38 0 28 0 38 0 66 1 241 0 97 5 153 0 142 5 153 0 144] 
#[0 1 78 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 82 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 82 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 82 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 86 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 90 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 90 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 5 117 0 61 5 157 0 92 5 161 1 1] 
#[1 1 94 0 28 5 165 0 66 5 169 0 241 5 173 0 242 5 177 0 244] 
#[0 1 98 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 181 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 181 0 170 5 181 0 171 5 181 0 172 1 197 0 235] 
#[0 5 185 0 62] 
#[1 5 189 0 95 1 241 0 97 5 193 0 98 5 197 0 144 5 197 1 6 5 201 1 7 5 205 1 8] 
#[0 1 102 0 92] 
#[0 1 106 0 27 0 61 0 95] 
#[1 5 117 0 61 5 209 1 1] 
#[0 5 213 0 92] 
#[1 5 217 0 27 1 110 0 61] 
#[0 1 110 0 61] 
#[0 1 110 0 61] 
#[0 1 114 0 27 0 61] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 221 0 129 5 221 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 221 0 170 5 221 0 171 5 221 0 172 1 197 0 235] 
#[1 0 38 0 92 1 241 0 97 5 225 0 142 5 225 0 144] 
#[1 0 38 0 92 1 241 0 97 5 229 0 142 5 229 0 144] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 118 0 92 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 5 237 0 174 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 6 1 0 81 6 1 0 82 5 241 0 91 1 118 0 92 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 5 245 0 152 1 45 0 153 1 45 0 154 5 245 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 5 249 0 174 5 253 0 191 6 1 0 201 6 5 0 216 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 9 0 129 6 9 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 9 0 170 6 9 0 171 6 9 0 172 1 197 0 235] 
#[0 6 13 0 90] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 17 0 129 6 17 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 17 0 170 6 17 0 171 6 17 0 172 1 197 0 235] 
#[1 0 22 0 24 0 22 0 25 0 22 0 26 2 45 0 27 0 22 0 28 0 22 0 97 6 21 0 126 2 57 0 128 4 249 0 210 4 253 0 212] 
#[1 4 145 0 24 6 25 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 6 29 0 134 6 29 0 136 6 33 0 144 5 13 0 208 5 17 0 211 5 17 0 213 6 29 1 18] 
#[1 4 233 0 32 6 37 0 138] 
#[1 1 38 0 27 4 233 0 32 1 38 0 92 5 33 0 138 6 41 0 139] 
#[1 6 45 0 27 6 49 0 92] 
#[0 1 122 0 27 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 6 53 0 175 6 53 0 176 6 53 0 177 6 53 0 178 6 53 0 179 6 53 0 180 6 53 0 181 6 53 0 182 6 53 0 183 6 53 0 184 6 53 0 187 6 53 0 188 6 53 0 195 6 53 0 196 6 53 0 197 6 53 0 223 1 197 0 235 6 53 1 12 6 53 1 16 6 53 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 61 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 61 0 170 6 61 0 171 6 61 0 172 1 197 0 235] 
#[0 1 126 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 65 0 129 6 65 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 65 0 170 6 65 0 171 6 65 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 69 0 129 6 69 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 69 0 170 6 69 0 171 6 69 0 172 1 197 0 235] 
#[0 6 73 0 98] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 77 0 129 6 77 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 77 0 170 6 77 0 171 6 77 0 172 1 197 0 235] 
#[0 6 81 0 98] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 1 142 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 85 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 85 0 170 6 85 0 171 6 85 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 6 89 0 159] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 6 93 0 157 6 93 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 6 97 0 157 6 97 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 6 101 0 157 6 101 0 158] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 6 105 0 159 6 105 0 160] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 6 109 0 159 6 109 0 160] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 6 113 0 161] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 6 117 0 161] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 6 121 0 161] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 6 125 0 162] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 6 129 0 162] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 6 133 0 162] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 6 137 0 162] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 6 141 0 162] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 6 145 0 162] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 6 149 0 163] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 6 153 0 163] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 6 157 0 163] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 6 161 0 163] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 6 165 0 164] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 6 169 0 165] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 6 173 0 166] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 6 177 0 167] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 2 29 0 152 1 45 0 153 1 45 0 154 2 29 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 6 181 0 168] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 185 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 185 0 170 6 185 0 171 6 185 0 172 1 197 0 235] 
#[1 4 233 0 32 6 189 0 138] 
#[1 1 38 0 27 4 233 0 32 1 38 0 92 5 33 0 138 6 193 0 139] 
#[1 6 197 0 27 6 201 0 92] 
#[0 1 150 0 27 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 6 205 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 209 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 209 0 170 6 209 0 171 6 209 0 172 1 197 0 235 6 213 0 236] 
#[0 1 154 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 4 205 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 4 205 0 170 4 205 0 171 4 205 0 172 1 197 0 235] 
#[0 1 10 0 29 0 34] 
#[0 1 10 0 29 0 34] 
#[1 1 18 0 27 1 26 0 29 4 233 0 32 1 26 0 34 1 18 0 95 4 237 0 138] 
#[0 1 158 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 60 0 63 0 64 0 65 0 67 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 217 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 217 0 170 6 217 0 171 6 217 0 172 1 197 0 235] 
#[0 1 166 0 25 0 27] 
#[0 1 166 0 25 0 27] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 22 0 7 0 22 0 12 0 22 0 17 0 22 0 18 0 22 0 24 0 254 0 25 0 22 0 26 0 151 0 27 0 22 0 28 0 22 0 31 0 22 0 34 0 22 0 36 0 22 0 37 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 42 0 22 0 43 0 22 0 45 0 22 0 48 0 22 0 60 0 22 0 63 0 22 0 65 0 22 0 67 0 22 0 97 0 22 0 100 0 22 0 101 0 22 0 102 0 22 0 103 0 22 0 104 6 221 0 126 2 57 0 128] 
#[1 6 225 0 25 4 193 0 27] 
#[0 1 174 0 7 0 12 0 17 0 18 0 24 0 25 0 26 0 27 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 48 0 60 0 63 0 65 0 67 0 97 0 100 0 101 0 102 0 103 0 104] 
#[0 6 229 0 34] 
#[0 1 26 0 34] 
#[0 6 233 0 25] 
#[0 6 237 0 34] 
#[0 6 241 0 34] 
#[1 2 61 0 11 4 145 0 24 2 69 0 52 2 73 0 55 6 245 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 6 249 0 132 6 249 0 133 2 101 0 134 6 249 0 135 2 101 0 136 4 157 0 144 6 249 0 237 2 101 1 18] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 253 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 253 0 170 6 253 0 171 6 253 0 172 1 197 0 235] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 182 0 33 1 241 0 97 2 145 0 118 7 37 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 37 0 213 7 29 0 214 7 17 0 227 7 21 0 229 7 25 0 230 7 29 0 231 7 33 0 232 7 37 0 233] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 7 41 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 7 41 0 170 7 41 0 171 7 41 0 172 1 197 0 235] 
#[0 1 186 0 27 0 95] 
#[0 1 190 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 49 0 50 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 2 133 0 24 0 155 0 25 7 45 0 26 2 137 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 2 145 0 118 0 237 0 119 7 49 0 121 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 4 173 0 129 4 177 0 130 1 21 0 140 1 13 0 141 2 161 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 4 173 0 170 4 173 0 171 4 173 0 172 2 145 0 206 2 145 0 207 7 53 0 209 7 49 0 213 7 53 0 214 1 197 0 235] 
#[1 7 61 0 25 7 65 0 27] 
#[0 1 198 0 25 0 27] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 24 0 159 0 25 0 159 0 27 0 159 0 32 0 159 0 33 1 6 0 34 1 6 0 35 1 6 0 39 1 6 0 40 1 6 0 41 1 6 0 44 1 6 0 45 1 6 0 53 1 6 0 70 1 6 0 71 1 6 0 72 1 6 0 73 1 6 0 75 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 93 1 6 0 94 0 159 0 95 1 6 0 103 1 6 0 104] 
#[1 7 69 0 29 4 229 0 34] 
#[1 0 163 0 27 1 26 0 29 4 233 0 32 1 26 0 34 0 163 0 95 7 73 0 138 5 49 0 139] 
#[1 7 77 0 27 7 81 0 95] 
#[0 1 206 0 27 0 95] 
#[0 1 210 0 27 0 95] 
#[0 7 85 0 26] 
#[0 1 214 0 51] 
#[0 1 218 0 25 0 27 0 33 0 84 0 92 0 95] 
#[0 1 222 0 25 0 27 0 33 0 95] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 2 145 0 118 7 89 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 89 0 213] 
#[0 1 226 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 230 0 25 0 27 0 33 0 95] 
#[0 1 234 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 238 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 7 93 0 25 3 173 0 27] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 7 97 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 7 97 0 170 7 97 0 171 7 97 0 172 1 197 0 235] 
#[0 1 242 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 1 246 0 27 0 33] 
#[1 7 101 0 27 7 105 0 33] 
#[0 1 250 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 7 109 0 34] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 182 0 33 1 241 0 97 2 145 0 118 7 37 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 37 0 213 7 29 0 214 7 113 0 227 7 25 0 230 7 29 0 231 7 33 0 232 7 37 0 233] 
#[1 2 249 0 28 7 117 0 197] 
#[0 7 121 0 34] 
#[1 1 254 0 7 1 254 0 12 1 254 0 17 1 254 0 18 1 254 0 24 1 254 0 28 1 254 0 30 1 254 0 31 1 254 0 34 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 40 1 254 0 42 1 254 0 43 1 254 0 45 1 254 0 47 1 254 0 48 5 93 0 49 1 254 0 54 1 254 0 56 1 254 0 57 1 254 0 58 1 254 0 59 1 254 0 60 1 254 0 63 1 254 0 64 1 254 0 65 1 254 0 67 1 254 0 68 1 254 0 74 1 254 0 81 1 254 0 82 1 254 0 83 1 254 0 85 1 254 0 86 1 254 0 87 1 254 0 88 1 254 0 89 1 254 0 90 1 254 0 91 1 254 0 92 1 254 0 95 1 254 0 97 1 254 0 100 1 254 0 101 1 254 0 102 1 254 0 103 1 254 0 104 7 125 0 225 1 254 1 14] 
#[0 2 2 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 2 6 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 173 0 27 7 129 0 33] 
#[0 7 133 0 100 0 125 1 2] 
#[0 7 137 0 92] 
#[0 2 10 0 61 0 92] 
#[1 2 14 0 27 7 141 0 62 2 14 0 95] 
#[1 7 145 0 27 7 149 0 95] 
#[0 2 18 0 27 0 95] 
#[1 0 38 0 34 1 241 0 97 7 153 0 142 7 153 0 144] 
#[0 7 157 0 34] 
#[0 7 161 0 92] 
#[1 1 94 0 28 5 165 0 66 7 165 0 241 5 173 0 242 5 177 0 244] 
#[0 2 22 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 7 169 0 92] 
#[1 0 245 0 17 0 41 0 24 1 237 0 28 0 49 0 31 2 21 0 34 0 77 0 42 0 81 0 43 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 21 0 140 1 13 0 141 1 21 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 7 173 0 152 1 45 0 153 1 45 0 154 7 173 0 156] 
#[0 2 26 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 7 177 0 28] 
#[0 2 30 0 28] 
#[0 2 34 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[1 1 241 0 97 7 181 0 144 7 181 1 6] 
#[0 2 38 0 61] 
#[0 7 185 0 62] 
#[0 2 42 0 27 0 95] 
#[1 7 189 0 27 7 193 0 95] 
#[0 2 46 0 27 0 95] 
#[0 7 197 0 92] 
#[0 2 50 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 73 0 11 3 77 0 28 7 201 1 4 7 205 1 5] 
#[1 3 173 0 27 7 209 0 33] 
#[0 7 213 0 92] 
#[0 7 217 0 92] 
#[1 3 173 0 27 2 54 0 33 2 54 0 92] 
#[0 7 221 0 92] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 7 225 0 118 7 229 0 144 7 233 0 204 7 237 0 205 7 225 0 206 7 225 0 207 7 241 0 215] 
#[1 0 134 0 1 0 134 0 2 0 134 0 3 0 134 0 4 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 11 0 134 0 13 0 134 0 14 0 134 0 15 0 134 0 16 0 134 0 18 0 167 0 19 0 134 0 20 0 134 0 21 0 134 0 22 0 134 0 23 0 134 0 27 4 17 0 32 0 134 0 35 3 221 0 39 0 134 0 40 0 134 0 41 3 225 0 45 0 134 0 53 4 17 0 70 4 17 0 71 4 17 0 72 4 17 0 73 4 17 0 75 4 17 0 76 4 17 0 77 4 17 0 78 4 17 0 79 4 17 0 80 7 249 0 84 0 134 0 92 0 134 0 93 4 17 0 94 4 17 0 173] 
#[0 7 253 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 118 0 92 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 8 1 0 174 1 197 0 235] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 8 5 0 118 8 9 0 144 4 129 0 202 4 133 0 203 8 5 0 206 8 5 0 207 8 13 0 215] 
#[1 8 17 0 19 8 21 0 84] 
#[1 3 173 0 27 8 25 0 33] 
#[0 8 29 0 34] 
#[1 3 173 0 27 8 33 0 33] 
#[1 3 145 0 24 1 194 0 25 7 1 0 26 3 149 0 28 1 241 0 97 2 145 0 118 7 49 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 53 0 209 7 49 0 213 7 53 0 214] 
#[0 1 202 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[0 8 37 0 29] 
#[1 1 38 0 27 1 26 0 29 4 233 0 32 1 38 0 95 5 33 0 138 5 49 0 139] 
#[0 2 58 0 27 0 84 0 92] 
#[0 2 62 0 27 0 84 0 92] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 3 153 0 118 3 157 0 144 8 41 0 205 3 153 0 206 3 153 0 207] 
#[0 2 66 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 2 70 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 2 74 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 2 78 0 25 0 27 0 29 0 33 0 92 0 105 0 106 1 14] 
#[1 3 173 0 27 8 45 0 105 8 49 0 106 8 53 0 143 8 57 0 145] 
#[1 8 61 0 25 3 173 0 27] 
#[0 2 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 8 65 0 25 3 173 0 27] 
#[0 2 86 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 2 90 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 2 94 0 1 0 2 0 3 0 4 0 5 0 6 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 2 98 0 1 0 2 0 3 0 4 0 5 0 6 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 2 98 0 1 0 2 0 3 0 4 0 5 0 6 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[0 2 98 0 1 0 2 0 3 0 4 0 5 0 6 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 27 0 29 0 33 0 35 0 40 0 41 0 53 0 84 0 92 0 93 0 95 0 105 0 106 1 14] 
#[1 2 102 0 1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 5 2 102 0 6 2 102 0 9 4 25 0 10 4 29 0 11 2 102 0 13 2 102 0 14 2 102 0 15 2 102 0 16 2 102 0 18 2 102 0 19 2 102 0 20 2 102 0 21 2 102 0 22 2 102 0 23 2 102 0 25 2 102 0 27 2 102 0 29 2 102 0 33 2 102 0 35 2 102 0 40 2 102 0 41 2 102 0 53 2 102 0 84 2 102 0 92 4 33 0 93 2 102 0 95 2 102 0 105 2 102 0 106 2 102 1 14] 
#[1 2 102 0 1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 5 2 102 0 6 2 102 0 9 4 25 0 10 4 29 0 11 2 102 0 13 2 102 0 14 2 102 0 15 2 102 0 16 2 102 0 18 2 102 0 19 2 102 0 20 2 102 0 21 2 102 0 22 2 102 0 23 2 102 0 25 2 102 0 27 2 102 0 29 2 102 0 33 2 102 0 35 2 102 0 40 2 102 0 41 2 102 0 53 2 102 0 84 2 102 0 92 4 33 0 93 2 102 0 95 2 102 0 105 2 102 0 106 2 102 1 14] 
#[1 2 106 0 1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 5 2 106 0 6 2 106 0 9 2 106 0 13 2 106 0 14 2 106 0 15 2 106 0 16 4 37 0 18 2 106 0 19 2 106 0 20 2 106 0 21 2 106 0 22 2 106 0 23 2 106 0 25 2 106 0 27 2 106 0 29 2 106 0 33 2 106 0 35 4 41 0 40 2 106 0 41 2 106 0 53 2 106 0 84 2 106 0 92 2 106 0 95 2 106 0 105 2 106 0 106 2 106 1 14] 
#[1 2 106 0 1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 5 2 106 0 6 2 106 0 9 2 106 0 13 2 106 0 14 2 106 0 15 2 106 0 16 4 37 0 18 2 106 0 19 2 106 0 20 2 106 0 21 2 106 0 22 2 106 0 23 2 106 0 25 2 106 0 27 2 106 0 29 2 106 0 33 2 106 0 35 4 41 0 40 2 106 0 41 2 106 0 53 2 106 0 84 2 106 0 92 2 106 0 95 2 106 0 105 2 106 0 106 2 106 1 14] 
#[1 2 106 0 1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 5 2 106 0 6 2 106 0 9 2 106 0 13 2 106 0 14 2 106 0 15 2 106 0 16 4 37 0 18 2 106 0 19 2 106 0 20 2 106 0 21 2 106 0 22 2 106 0 23 2 106 0 25 2 106 0 27 2 106 0 29 2 106 0 33 2 106 0 35 4 41 0 40 2 106 0 41 2 106 0 53 2 106 0 84 2 106 0 92 2 106 0 95 2 106 0 105 2 106 0 106 2 106 1 14] 
#[1 4 45 0 1 2 110 0 2 4 49 0 3 4 53 0 4 2 110 0 5 2 110 0 6 2 110 0 9 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 25 2 110 0 27 2 110 0 29 2 110 0 33 2 110 0 35 2 110 0 41 2 110 0 53 2 110 0 84 2 110 0 92 2 110 0 95 2 110 0 105 2 110 0 106 2 110 1 14] 
#[1 4 45 0 1 2 110 0 2 4 49 0 3 4 53 0 4 2 110 0 5 2 110 0 6 2 110 0 9 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 25 2 110 0 27 2 110 0 29 2 110 0 33 2 110 0 35 2 110 0 41 2 110 0 53 2 110 0 84 2 110 0 92 2 110 0 95 2 110 0 105 2 110 0 106 2 110 1 14] 
#[1 4 45 0 1 2 110 0 2 4 49 0 3 4 53 0 4 2 110 0 5 2 110 0 6 2 110 0 9 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 25 2 110 0 27 2 110 0 29 2 110 0 33 2 110 0 35 2 110 0 41 2 110 0 53 2 110 0 84 2 110 0 92 2 110 0 95 2 110 0 105 2 110 0 106 2 110 1 14] 
#[1 4 45 0 1 2 110 0 2 4 49 0 3 4 53 0 4 2 110 0 5 2 110 0 6 2 110 0 9 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 25 2 110 0 27 2 110 0 29 2 110 0 33 2 110 0 35 2 110 0 41 2 110 0 53 2 110 0 84 2 110 0 92 2 110 0 95 2 110 0 105 2 110 0 106 2 110 1 14] 
#[1 4 45 0 1 2 110 0 2 4 49 0 3 4 53 0 4 2 110 0 5 2 110 0 6 2 110 0 9 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 25 2 110 0 27 2 110 0 29 2 110 0 33 2 110 0 35 2 110 0 41 2 110 0 53 2 110 0 84 2 110 0 92 2 110 0 95 2 110 0 105 2 110 0 106 2 110 1 14] 
#[1 4 45 0 1 2 110 0 2 4 49 0 3 4 53 0 4 2 110 0 5 2 110 0 6 2 110 0 9 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 25 2 110 0 27 2 110 0 29 2 110 0 33 2 110 0 35 2 110 0 41 2 110 0 53 2 110 0 84 2 110 0 92 2 110 0 95 2 110 0 105 2 110 0 106 2 110 1 14] 
#[1 4 57 0 2 4 61 0 5 4 65 0 6 4 69 0 9 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 4 73 0 19 2 114 0 20 4 77 0 21 2 114 0 22 2 114 0 23 2 114 0 25 2 114 0 27 2 114 0 29 2 114 0 33 2 114 0 35 2 114 0 41 2 114 0 53 2 114 0 84 2 114 0 92 2 114 0 95 2 114 0 105 2 114 0 106 2 114 1 14] 
#[1 4 57 0 2 4 61 0 5 4 65 0 6 4 69 0 9 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 4 73 0 19 2 114 0 20 4 77 0 21 2 114 0 22 2 114 0 23 2 114 0 25 2 114 0 27 2 114 0 29 2 114 0 33 2 114 0 35 2 114 0 41 2 114 0 53 2 114 0 84 2 114 0 92 2 114 0 95 2 114 0 105 2 114 0 106 2 114 1 14] 
#[1 4 57 0 2 4 61 0 5 4 65 0 6 4 69 0 9 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 4 73 0 19 2 114 0 20 4 77 0 21 2 114 0 22 2 114 0 23 2 114 0 25 2 114 0 27 2 114 0 29 2 114 0 33 2 114 0 35 2 114 0 41 2 114 0 53 2 114 0 84 2 114 0 92 2 114 0 95 2 114 0 105 2 114 0 106 2 114 1 14] 
#[1 4 57 0 2 4 61 0 5 4 65 0 6 4 69 0 9 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 4 73 0 19 2 114 0 20 4 77 0 21 2 114 0 22 2 114 0 23 2 114 0 25 2 114 0 27 2 114 0 29 2 114 0 33 2 114 0 35 2 114 0 41 2 114 0 53 2 114 0 84 2 114 0 92 2 114 0 95 2 114 0 105 2 114 0 106 2 114 1 14] 
#[1 2 118 0 13 2 118 0 14 2 118 0 15 4 81 0 16 4 85 0 20 4 89 0 22 4 93 0 23 2 118 0 25 2 118 0 27 2 118 0 29 2 118 0 33 2 118 0 35 2 118 0 41 2 118 0 53 2 118 0 84 2 118 0 92 2 118 0 95 2 118 0 105 2 118 0 106 2 118 1 14] 
#[1 2 122 0 13 2 122 0 14 4 97 0 15 2 122 0 25 2 122 0 27 2 122 0 29 2 122 0 33 2 122 0 35 2 122 0 41 2 122 0 53 2 122 0 84 2 122 0 92 2 122 0 95 2 122 0 105 2 122 0 106 2 122 1 14] 
#[1 4 101 0 13 2 126 0 14 2 126 0 25 2 126 0 27 2 126 0 29 2 126 0 33 2 126 0 35 2 126 0 41 2 126 0 53 2 126 0 84 2 126 0 92 2 126 0 95 2 126 0 105 2 126 0 106 2 126 1 14] 
#[1 4 105 0 14 2 130 0 25 2 130 0 27 2 130 0 29 2 130 0 33 2 130 0 35 2 130 0 41 2 130 0 53 2 130 0 84 2 130 0 92 2 130 0 95 2 130 0 105 2 130 0 106 2 130 1 14] 
#[1 2 134 0 25 2 134 0 27 2 134 0 29 2 134 0 33 4 109 0 35 2 134 0 41 2 134 0 53 2 134 0 84 2 134 0 92 2 134 0 95 2 134 0 105 2 134 0 106 2 134 1 14] 
#[0 8 69 0 29] 
#[0 2 138 0 27 0 92] 
#[0 2 142 0 27 0 92] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 4 121 0 118 4 125 0 144 8 73 0 203 4 121 0 206 4 121 0 207] 
#[0 2 146 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 2 61 0 11 0 29 0 12 0 245 0 17 0 37 0 18 2 65 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 2 69 0 52 2 73 0 55 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 7 0 95 0 181 0 97 2 85 0 100 2 81 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 2 81 0 124 2 85 0 125 1 5 0 129 2 89 0 131 2 93 0 132 2 93 0 133 2 101 0 134 2 93 0 135 2 101 0 136 1 5 0 137 1 21 0 140 1 13 0 141 2 113 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 8 81 0 228 8 85 0 234 1 197 0 235 2 93 0 237 2 1 1 12 2 1 1 16 2 1 1 17 2 101 1 18] 
#[0 2 150 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 2 154 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 2 158 0 25 0 27] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 4 169 0 26 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 8 89 0 129 8 93 0 130 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 8 89 0 170 8 89 0 171 8 89 0 172 1 197 0 235] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 182 0 33 1 241 0 97 2 145 0 118 7 37 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 37 0 213 7 29 0 214 7 17 0 227 8 97 0 229 7 25 0 230 7 29 0 231 7 33 0 232 7 37 0 233] 
#[0 2 166 0 29 0 34] 
#[0 8 101 0 33] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 2 145 0 118 8 109 0 121 7 9 0 144 2 145 0 206 2 145 0 207 8 109 0 213 8 109 0 233 8 109 0 238] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 2 174 0 27 0 95] 
#[0 2 178 0 27 0 95] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 8 113 0 118 8 117 0 144 8 113 0 206 8 113 0 207] 
#[0 2 182 0 27 0 33] 
#[1 1 38 0 25 1 38 0 27 4 233 0 32 1 38 0 33 1 38 0 95 5 33 0 138 5 49 0 139] 
#[0 2 186 0 33] 
#[0 2 190 0 33] 
#[0 8 121 0 33] 
#[0 2 194 0 33] 
#[0 2 198 0 33] 
#[1 8 125 0 27 2 202 0 33] 
#[0 2 206 0 27 0 33] 
#[0 2 210 0 25 0 27 0 33 0 84 0 92 0 95] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 2 133 0 24 2 137 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 8 113 0 118 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 217 0 129 1 21 0 140 1 13 0 141 8 129 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 217 0 170 6 217 0 171 6 217 0 172 8 113 0 206 8 113 0 207 1 197 0 235] 
#[0 2 214 0 25 0 27] 
#[0 8 133 0 25] 
#[0 2 218 0 25] 
#[0 2 222 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[1 0 22 0 24 0 22 0 25 0 22 0 26 2 45 0 27 0 22 0 28 0 22 0 97 8 137 0 126 2 57 0 128 8 141 0 212] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 2 133 0 24 2 137 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 2 145 0 118 0 237 0 119 8 145 0 121 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 6 253 0 129 1 21 0 140 1 13 0 141 2 161 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 6 253 0 170 6 253 0 171 6 253 0 172 2 145 0 206 2 145 0 207 8 145 0 213 1 197 0 235] 
#[0 0 171 0 27 0 95] 
#[1 4 145 0 24 8 149 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 6 29 0 134 6 29 0 136 6 33 0 144 8 153 0 211 8 153 0 213 6 29 1 18] 
#[0 2 226 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 8 157 0 118 8 161 0 144 8 157 0 206 8 157 0 207] 
#[0 2 230 0 27 0 33] 
#[0 2 234 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 2 238 0 27 0 33] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 8 165 0 26 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 8 169 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 8 169 0 170 8 169 0 171 8 169 0 172 1 197 0 235] 
#[0 2 242 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 182 0 33 1 241 0 97 2 145 0 118 7 37 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 37 0 213 7 29 0 214 8 173 0 227 7 25 0 230 7 29 0 231 7 33 0 232 7 37 0 233] 
#[0 8 177 0 33] 
#[0 2 246 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 8 189 0 118 8 189 0 144 8 189 0 206 8 189 0 207 8 189 0 226] 
#[0 2 250 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 8 193 0 28 8 197 0 218] 
#[0 2 254 0 92] 
#[0 3 2 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 8 201 0 98] 
#[1 8 205 0 95 5 129 0 98 8 209 1 11] 
#[0 3 6 0 61 0 92] 
#[0 8 213 0 34] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 182 0 33 1 241 0 97 2 145 0 118 7 37 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 37 0 213 7 29 0 214 8 217 0 227 7 25 0 230 7 29 0 231 7 33 0 232 7 37 0 233] 
#[0 3 10 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 14 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 18 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 22 0 28] 
#[1 2 61 0 11 4 145 0 24 2 69 0 52 2 73 0 55 8 221 0 69 8 225 0 92 3 26 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 8 229 0 134 8 249 0 135 8 229 0 136 8 229 0 144 8 249 0 237 8 237 0 243 8 241 0 245 8 245 0 246 8 249 0 247 8 229 1 18] 
#[0 3 30 0 61] 
#[1 1 241 0 97 8 253 0 144 8 253 1 6] 
#[1 9 1 0 95 1 241 0 97 5 193 0 98 5 197 0 144 5 197 1 6 9 5 1 8] 
#[0 3 34 0 61] 
#[0 3 38 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 42 0 61] 
#[0 3 42 0 61] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 9 9 0 175 9 9 0 176 9 9 0 177 9 9 0 178 9 9 0 179 9 9 0 180 9 9 0 181 9 9 0 182 9 9 0 183 9 9 0 184 9 9 0 187 9 9 0 188 9 9 0 195 9 9 0 196 9 9 0 197 1 197 0 235 9 9 1 12 9 9 1 16 9 9 1 17] 
#[0 3 46 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 50 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 54 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 58 0 19 4 233 0 32 6 37 0 138] 
#[1 3 58 0 19 1 38 0 27 4 233 0 32 1 38 0 84 1 38 0 92 5 33 0 138 6 41 0 139] 
#[1 6 45 0 27 9 13 0 92] 
#[1 1 122 0 27 9 17 0 84 1 122 0 92] 
#[0 9 21 0 19] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 25 0 129 9 25 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 25 0 170 9 25 0 171 9 25 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 29 0 129 9 29 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 29 0 170 9 29 0 171 9 29 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 118 0 92 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 9 33 0 174 1 197 0 235] 
#[0 9 37 0 92] 
#[1 3 58 0 19 4 233 0 32 3 58 0 84 6 189 0 138] 
#[1 3 58 0 19 1 38 0 27 4 233 0 32 3 58 0 84 1 38 0 92 5 33 0 138 6 193 0 139] 
#[0 3 62 0 19 0 84] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 41 0 129 9 41 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 41 0 170 9 41 0 171 9 41 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 45 0 129 9 45 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 45 0 170 9 45 0 171 9 45 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 9 49 0 175 9 49 0 176 9 49 0 177 9 49 0 178 9 49 0 179 9 49 0 180 9 49 0 181 9 49 0 182 9 49 0 183 9 49 0 184 9 49 0 187 9 49 0 188 9 49 0 195 9 49 0 196 9 49 0 197 1 197 0 235 9 49 1 12 9 49 1 16 9 49 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 53 0 129 9 53 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 53 0 170 9 53 0 171 9 53 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 9 57 0 175 9 57 0 176 9 57 0 177 9 57 0 178 9 57 0 179 9 57 0 180 9 57 0 181 9 57 0 182 9 57 0 183 9 57 0 184 9 57 0 187 9 57 0 188 9 57 0 195 9 57 0 196 9 57 0 197 1 197 0 235 9 57 1 12 9 57 1 16 9 57 1 17] 
#[1 3 145 0 24 3 149 0 28 1 241 0 97 2 145 0 118 8 145 0 121 7 9 0 144 2 145 0 206 2 145 0 207 8 145 0 213] 
#[0 3 66 0 27 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 61 0 129 9 61 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 61 0 170 9 61 0 171 9 61 0 172 1 197 0 235] 
#[0 3 70 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 3 74 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 9 65 0 105 9 69 0 106] 
#[0 3 78 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 3 82 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 73 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 73 0 170 9 73 0 171 9 73 0 172 1 197 0 235] 
#[0 3 86 0 27 0 92] 
#[0 3 90 0 95] 
#[0 9 77 0 95] 
#[0 3 94 0 95] 
#[0 3 98 0 25 0 27] 
#[0 3 98 0 25 0 27] 
#[0 9 81 0 33] 
#[0 9 85 0 28] 
#[0 3 102 0 33] 
#[0 9 89 0 33] 
#[0 3 106 0 25 0 33] 
#[0 3 106 0 25 0 33] 
#[0 9 93 0 28] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 241 0 97 2 145 0 118 9 101 0 121 7 9 0 144 2 145 0 206 2 145 0 207 9 101 0 213 9 97 0 214 9 97 0 231 9 101 0 233] 
#[1 0 82 0 1 0 82 0 2 0 82 0 3 0 82 0 4 0 82 0 5 0 82 0 6 0 82 0 8 0 82 0 9 0 82 0 10 0 82 0 11 0 82 0 13 0 82 0 14 0 82 0 15 0 82 0 16 0 82 0 18 0 82 0 19 0 82 0 20 0 82 0 21 0 82 0 22 0 82 0 23 0 82 0 24 0 175 0 25 0 82 0 27 0 82 0 32 0 82 0 34 0 82 0 35 0 82 0 39 0 82 0 40 0 82 0 41 0 82 0 44 0 82 0 45 0 114 0 51 0 82 0 53 0 82 0 70 0 82 0 71 0 82 0 72 0 82 0 73 0 82 0 75 0 82 0 76 0 82 0 77 0 82 0 78 0 82 0 79 0 82 0 80 0 82 0 93 0 82 0 94 0 82 0 103 0 82 0 104] 
#[0 3 110 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[1 3 145 0 24 1 194 0 25 7 1 0 26 3 149 0 28 1 241 0 97 2 145 0 118 7 49 0 121 7 9 0 144 2 145 0 206 2 145 0 207 9 105 0 209 7 49 0 213 9 105 0 214] 
#[0 3 114 0 25 0 27] 
#[0 3 118 0 27 0 95] 
#[0 3 122 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[0 3 126 0 27 0 95] 
#[0 9 109 0 33] 
#[0 9 113 0 33] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 117 0 129 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 117 0 170 9 117 0 171 9 117 0 172 1 197 0 235] 
#[0 3 130 0 27 0 33] 
#[0 9 121 0 33] 
#[0 9 125 0 28] 
#[0 3 134 0 33] 
#[0 3 134 0 33] 
#[0 9 129 0 33] 
#[1 3 138 0 54 9 133 0 64 3 138 0 95 9 137 0 219 9 141 0 221 9 145 0 222] 
#[0 3 142 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 3 146 0 27 0 95] 
#[0 3 150 0 61 0 92] 
#[0 3 154 0 27 0 95] 
#[1 3 145 0 24 7 1 0 26 3 149 0 28 1 182 0 33 1 241 0 97 2 145 0 118 7 37 0 121 7 9 0 144 2 145 0 206 2 145 0 207 7 37 0 213 7 29 0 214 9 149 0 227 7 25 0 230 7 29 0 231 7 33 0 232 7 37 0 233] 
#[0 9 153 0 33] 
#[1 2 61 0 11 4 145 0 24 2 69 0 52 2 73 0 55 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 8 229 0 134 9 157 0 135 8 229 0 136 8 229 0 144 9 157 0 237 8 229 1 18] 
#[0 3 158 0 11 0 24 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 4 229 0 34] 
#[0 3 162 0 11 0 24 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 9 161 0 95] 
#[0 3 166 0 95] 
#[1 2 61 0 11 4 145 0 24 2 69 0 52 2 73 0 55 8 221 0 69 8 225 0 92 3 170 0 95 1 241 0 97 4 153 0 100 4 149 0 101 4 149 0 124 4 153 0 125 8 229 0 134 9 165 0 135 8 229 0 136 8 229 0 144 9 165 0 237 9 165 0 247 8 229 1 18] 
#[0 3 174 0 11 0 24 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 3 178 0 27 0 95] 
#[0 3 182 0 61] 
#[0 3 186 0 27 0 95] 
#[0 3 190 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 118 0 92 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 9 169 0 174 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 173 0 129 9 173 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 173 0 170 9 173 0 171 9 173 0 172 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 177 0 129 9 177 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 177 0 170 9 177 0 171 9 177 0 172 1 197 0 235] 
#[1 3 173 0 27 9 181 0 33] 
#[1 3 173 0 27 9 185 0 33] 
#[0 9 189 0 92] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 1 118 0 33 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 9 193 0 174 1 197 0 235] 
#[1 3 173 0 27 9 197 0 33] 
#[1 3 173 0 27 9 201 0 33] 
#[1 3 194 0 7 3 194 0 12 3 194 0 17 3 194 0 18 3 194 0 24 3 194 0 28 9 205 0 30 3 194 0 31 3 194 0 34 3 194 0 36 3 194 0 37 3 194 0 38 3 194 0 39 3 194 0 40 3 194 0 42 3 194 0 43 3 194 0 45 3 194 0 47 3 194 0 48 3 194 0 54 3 194 0 56 3 194 0 57 3 194 0 58 3 194 0 59 3 194 0 60 3 194 0 63 3 194 0 64 3 194 0 65 3 194 0 67 3 194 0 68 3 194 0 74 3 194 0 81 3 194 0 82 3 194 0 83 3 194 0 85 3 194 0 86 3 194 0 87 3 194 0 88 3 194 0 89 3 194 0 90 3 194 0 91 3 194 0 92 3 194 0 95 3 194 0 97 3 194 0 100 3 194 0 101 3 194 0 102 3 194 0 103 3 194 0 104 3 194 1 14] 
#[1 3 173 0 27 9 209 0 33] 
#[0 3 198 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 173 0 27 3 202 0 105 3 202 0 106] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 213 0 129 9 213 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 213 0 170 9 213 0 171 9 213 0 172 1 197 0 235] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 3 210 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 3 214 0 25 0 27 0 29 0 33 0 84 0 92 0 95 0 105 0 106 1 14] 
#[0 9 217 0 28] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 9 221 0 228 8 85 0 234 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 9 225 0 28] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 9 229 0 228 8 85 0 234 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 3 218 0 33] 
#[0 3 222 0 27 0 33] 
#[0 9 233 0 25] 
#[0 3 226 0 51] 
#[0 3 226 0 51] 
#[0 3 230 0 27 0 33] 
#[0 9 237 0 28] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 9 241 0 228 8 85 0 234 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[1 2 249 0 28 9 245 0 197] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 9 249 0 129 9 249 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 9 249 0 170 9 249 0 171 9 249 0 172 1 197 0 235] 
#[1 9 253 0 54 10 1 0 95 10 5 0 220] 
#[1 3 234 0 54 9 133 0 64 3 234 0 95 10 9 0 222] 
#[0 3 238 0 54 0 64 0 95] 
#[0 10 13 0 33] 
#[0 10 17 0 28] 
#[0 3 242 0 11 0 24 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 53 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 100 0 101 0 102 0 103 0 104 0 105 0 106 1 14] 
#[0 3 250 0 11 0 24 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 10 21 0 92] 
#[1 3 173 0 27 10 25 0 33] 
#[1 3 173 0 27 10 29 0 33] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 33 0 175 10 33 0 176 10 33 0 177 10 33 0 178 10 33 0 179 10 33 0 180 10 33 0 181 10 33 0 182 10 33 0 183 10 33 0 184 10 33 0 187 10 33 0 188 10 33 0 195 10 33 0 196 10 33 0 197 1 197 0 235 10 33 1 12 10 33 1 16 10 33 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 37 0 175 10 37 0 176 10 37 0 177 10 37 0 178 10 37 0 179 10 37 0 180 10 37 0 181 10 37 0 182 10 37 0 183 10 37 0 184 10 37 0 187 10 37 0 188 10 37 0 195 10 37 0 196 10 37 0 197 1 197 0 235 10 37 1 12 10 37 1 16 10 37 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 1 118 0 33 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 10 41 0 174 1 197 0 235] 
#[0 10 45 0 33] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 49 0 175 10 49 0 176 10 49 0 177 10 49 0 178 10 49 0 179 10 49 0 180 10 49 0 181 10 49 0 182 10 49 0 183 10 49 0 184 10 49 0 187 10 49 0 188 10 49 0 195 10 49 0 196 10 49 0 197 1 197 0 235 10 49 1 12 10 49 1 16 10 49 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 53 0 175 10 53 0 176 10 53 0 177 10 53 0 178 10 53 0 179 10 53 0 180 10 53 0 181 10 53 0 182 10 53 0 183 10 53 0 184 10 53 0 187 10 53 0 188 10 53 0 195 10 53 0 196 10 53 0 197 1 197 0 235 10 53 1 12 10 53 1 16 10 53 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 57 0 175 10 57 0 176 10 57 0 177 10 57 0 178 10 57 0 179 10 57 0 180 10 57 0 181 10 57 0 182 10 57 0 183 10 57 0 184 10 57 0 187 10 57 0 188 10 57 0 195 10 57 0 196 10 57 0 197 1 197 0 235 10 57 1 12 10 57 1 16 10 57 1 17] 
#[0 10 61 0 92] 
#[1 3 173 0 27 3 254 0 105 3 254 0 106] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 10 65 0 228 8 85 0 234 1 197 0 235 10 69 0 239 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 10 73 0 95] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 10 77 0 228 8 85 0 234 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 10 81 0 95] 
#[0 4 2 0 19 0 25 0 27 0 32 0 33 0 84 0 95] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 10 65 0 228 8 85 0 234 1 197 0 235 10 85 0 239 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 10 89 0 95] 
#[0 4 6 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 49 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 3 173 0 27 10 93 0 29] 
#[0 10 97 0 29] 
#[0 4 10 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 9 133 0 64 3 138 0 95 10 101 0 219 9 141 0 221 9 145 0 222] 
#[0 4 14 0 54 0 64 0 95] 
#[0 10 105 0 28] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 10 109 0 228 8 85 0 234 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 1 237 0 28 0 49 0 31 1 118 0 33 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 93 0 48 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 1 241 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 5 233 0 129 5 233 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 5 233 0 170 5 233 0 171 5 233 0 172 10 113 0 174 1 197 0 235] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 117 0 175 10 117 0 176 10 117 0 177 10 117 0 178 10 117 0 179 10 117 0 180 10 117 0 181 10 117 0 182 10 117 0 183 10 117 0 184 10 117 0 187 10 117 0 188 10 117 0 195 10 117 0 196 10 117 0 197 1 197 0 235 10 117 1 12 10 117 1 16 10 117 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 121 0 175 10 121 0 176 10 121 0 177 10 121 0 178 10 121 0 179 10 121 0 180 10 121 0 181 10 121 0 182 10 121 0 183 10 121 0 184 10 121 0 187 10 121 0 188 10 121 0 195 10 121 0 196 10 121 0 197 1 197 0 235 10 121 1 12 10 121 1 16 10 121 1 17] 
#[0 4 18 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 22 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 10 125 0 33] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 129 0 175 10 129 0 176 10 129 0 177 10 129 0 178 10 129 0 179 10 129 0 180 10 129 0 181 10 129 0 182 10 129 0 183 10 129 0 184 10 129 0 187 10 129 0 188 10 129 0 195 10 129 0 196 10 129 0 197 1 197 0 235 10 129 1 12 10 129 1 16 10 129 1 17] 
#[0 4 26 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 30 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 34 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 38 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 42 0 95] 
#[0 10 133 0 95] 
#[0 4 46 0 11 0 24 0 27 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 10 137 0 95] 
#[0 4 50 0 11 0 24 0 27 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 10 141 0 95] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 26 0 54 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 26 0 64 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 10 145 0 198 2 121 0 199 2 1 0 200 1 193 0 201 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 26 0 64 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 10 149 0 198 2 121 0 199 2 1 0 200 1 193 0 201 1 197 0 235 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 10 153 0 95] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 1 193 0 81 1 193 0 82 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 26 0 95 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 2 1 0 175 2 1 0 176 2 1 0 177 2 1 0 178 2 1 0 179 2 1 0 180 2 1 0 181 2 1 0 182 2 1 0 183 2 1 0 184 2 1 0 187 2 1 0 188 2 1 0 191 2 1 0 195 2 1 0 196 2 1 0 197 8 77 0 198 2 121 0 199 2 1 0 200 1 193 0 201 10 65 0 228 8 85 0 234 1 197 0 235 10 157 0 239 2 1 1 12 2 1 1 16 2 1 1 17] 
#[0 10 161 0 95] 
#[0 10 165 0 33] 
#[0 4 58 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 62 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 169 0 175 10 169 0 176 10 169 0 177 10 169 0 178 10 169 0 179 10 169 0 180 10 169 0 181 10 169 0 182 10 169 0 183 10 169 0 184 10 169 0 187 10 169 0 188 10 169 0 195 10 169 0 196 10 169 0 197 1 197 0 235 10 169 1 12 10 169 1 16 10 169 1 17] 
#[0 4 66 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 70 0 11 0 24 0 27 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 4 74 0 11 0 24 0 27 0 52 0 55 0 69 0 92 0 95 0 97 0 100 0 101] 
#[0 4 78 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 9 0 10 0 11 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 27 0 28 0 29 0 32 0 33 0 34 0 35 0 39 0 40 0 41 0 44 0 45 0 53 0 70 0 71 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 84 0 92 0 93 0 94 0 95 0 103 0 104 0 105 0 106 1 14] 
#[0 4 82 0 54 0 64 0 95] 
#[0 4 86 0 64 0 95] 
#[0 4 90 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 10 173 0 95] 
#[0 4 94 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[1 0 25 0 7 0 29 0 12 0 245 0 17 0 37 0 18 0 41 0 24 0 45 0 28 0 49 0 31 0 53 0 34 0 57 0 36 0 61 0 37 0 65 0 38 0 69 0 39 0 73 0 40 0 77 0 42 0 81 0 43 0 85 0 45 0 89 0 47 0 93 0 48 0 97 0 56 0 101 0 57 0 105 0 58 0 241 0 60 0 245 0 63 0 121 0 65 0 125 0 67 0 133 0 74 0 145 0 83 0 149 0 85 0 153 0 86 0 157 0 87 0 161 0 88 0 165 0 89 0 169 0 90 0 173 0 91 0 177 0 92 0 181 0 97 0 253 0 100 0 249 0 101 0 193 0 102 0 197 0 103 0 6 0 104 1 21 0 108 1 21 0 109 1 21 0 110 1 21 0 111 1 21 0 112 1 21 0 113 1 21 0 114 1 21 0 115 1 21 0 116 0 237 0 119 0 241 0 122 0 245 0 123 0 249 0 124 0 253 0 125 1 5 0 129 1 5 0 137 1 21 0 140 1 13 0 141 1 17 0 144 1 21 0 147 1 21 0 148 1 21 0 149 1 21 0 151 1 49 0 152 1 45 0 153 1 45 0 154 1 49 0 156 1 53 0 157 1 53 0 158 1 65 0 159 1 65 0 160 1 69 0 161 1 73 0 162 1 77 0 163 1 81 0 164 1 85 0 165 1 89 0 166 1 93 0 167 1 97 0 168 1 101 0 169 1 5 0 170 1 5 0 171 1 5 0 172 10 177 0 175 10 177 0 176 10 177 0 177 10 177 0 178 10 177 0 179 10 177 0 180 10 177 0 181 10 177 0 182 10 177 0 183 10 177 0 184 10 177 0 187 10 177 0 188 10 177 0 195 10 177 0 196 10 177 0 197 1 197 0 235 10 177 1 12 10 177 1 16 10 177 1 17] 
#[0 4 98 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 102 0 7 0 12 0 17 0 18 0 24 0 28 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 56 0 57 0 58 0 59 0 60 0 63 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 97 0 100 0 101 0 102 0 103 0 104 1 14] 
#[0 4 106 0 7 0 12 0 17 0 18 0 24 0 28 0 30 0 31 0 34 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 45 0 47 0 48 0 54 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 67 0 68 0 74 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 95 0 97 0 100 0 101 0 102 0 103 0 104 1 14]
	).
]
