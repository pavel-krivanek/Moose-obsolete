generated
definitionComment
"%root Program;
%prefix JS;
%suffix Node;

%states default template;

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