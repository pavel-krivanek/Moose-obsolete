operations - stubs
stringValueStub
	"The query stringValue() returns the String resulting from concatenating, in order, all the component String values of all the operands or subExpressions that are part of the StringExpression."
	
	"{OCL} result = (if subExpression->notEmpty()
then subExpression->iterate(se; stringValue: String = '' | stringValue.concat(se.stringValue()))
else operand->iterate(op; stringValue: String = '' | stringValue.concat(op.stringValue()))
endif)"
	
	self notYetImplemented
