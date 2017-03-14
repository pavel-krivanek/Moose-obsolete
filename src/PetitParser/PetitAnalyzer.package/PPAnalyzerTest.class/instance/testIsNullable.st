testing
testIsNullable
	self assert: $a asParser star isNullable.
	self assert: nil asParser isNullable.

	self deny: $a asParser plus isNullable.	
	self deny: PPLiteralSequenceParser new isNullable.
	self deny: PPLiteralObjectParser new isNullable.
	self deny: PPPredicateParser new isNullable.
	self deny: PPChoiceParser new isNullable.
	self deny: PPSequenceParser new isNullable.
	self deny: PPAndParser new isNullable.
	self deny: PPTokenParser new isNullable