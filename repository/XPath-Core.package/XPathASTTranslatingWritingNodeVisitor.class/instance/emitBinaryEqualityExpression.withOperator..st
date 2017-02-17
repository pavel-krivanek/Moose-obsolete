private
emitBinaryEqualityExpression: aBinaryExpression withOperator: aSelectorString
	| omitComparableConversions |

	"Smalltalk strings, numbers, and booleans have = and ~= selectors that behave
	like the XPath spec requires when the argument is the same type, so no
	comparable converion is needed, but cross-type comparisons and comparisons
	between node sets need to be handled with comparables"
	omitComparableConversions :=
		(aBinaryExpression expression type isNumberValueType
			or: [aBinaryExpression expression type isStringValueType
				or: [aBinaryExpression expression type isBooleanValueType]])
			and: [
				aBinaryExpression expression type =
					aBinaryExpression otherExpression type].

	self emit: $(.
	aBinaryExpression expression acceptNodeVisitor: self.
	omitComparableConversions
		ifFalse: [self emitComparableConversion].
	self
		emitSpace;
		emitAll: aSelectorString.
	aBinaryExpression otherExpression acceptNodeVisitor: self.
	omitComparableConversions
		ifFalse: [self emitComparableConversion].
	self emit: $).
	^ aBinaryExpression.