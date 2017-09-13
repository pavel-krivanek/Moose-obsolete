accessing
subExpressions: aStringExpression
	"The StringExpressions that constitute this StringExpression."
	self subExpressions
		removeAll;
		addAll: aStringExpression