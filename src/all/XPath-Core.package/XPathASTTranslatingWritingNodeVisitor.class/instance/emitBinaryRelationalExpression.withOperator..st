private
emitBinaryRelationalExpression: aBinaryExpression withOperator: aSelectorString
	| omitComparableConversions |

	"if neither subexpression is of node set type, then comparable
	conversions aren't needed, and converting non-numbers to numbers
	is enough."
	omitComparableConversions :=
		aBinaryExpression expression type isNodeSetValueType not
			and: [aBinaryExpression otherExpression type isNodeSetValueType not].

	self emit: $(.
	aBinaryExpression expression acceptNodeVisitor: self.
	omitComparableConversions
		ifTrue: [
			aBinaryExpression expression type isNumberValueType
				ifFalse: [self emitNumberConversion]]
		ifFalse: [self emitComparableConversion].
	self
		emitSpace;
		emitAll: aSelectorString.
	aBinaryExpression otherExpression acceptNodeVisitor: self.
	omitComparableConversions
		ifTrue: [
			aBinaryExpression otherExpression type isNumberValueType
				ifFalse: [self emitNumberConversion]]
		ifFalse: [self emitComparableConversion].
	self emit: $).
	^ aBinaryExpression.