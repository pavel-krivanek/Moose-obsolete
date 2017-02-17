private
emitBinaryRelationalExpression: aBinaryExpression withOperator: aSelectorString
	| needsComparableConversions |

	"If either subexpression is of node set type, then comparable
	conversions are still needed. Otherwise, converting non-numbers to
	numbers is enough."
	needsComparableConversions :=
		aBinaryExpression expression type isNodeSetValueType
			or: [aBinaryExpression otherExpression type isNodeSetValueType].

	self emit: $(.
	aBinaryExpression expression acceptNodeVisitor: self.
	needsComparableConversions
		ifTrue: [self emitComparableConversion]
		ifFalse: [
			aBinaryExpression expression type isNumberValueType
				ifFalse: [self emitNumberConversion]].
	self
		emitSpace;
		emitAll: aSelectorString.
	aBinaryExpression otherExpression acceptNodeVisitor: self.
	needsComparableConversions
		ifTrue: [self emitComparableConversion]
		ifFalse: [
			aBinaryExpression otherExpression type isNumberValueType
				ifFalse: [self emitNumberConversion]].
	self emit: $).
	^ aBinaryExpression.