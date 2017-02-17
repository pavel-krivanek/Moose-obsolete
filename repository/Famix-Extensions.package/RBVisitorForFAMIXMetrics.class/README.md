VisualWorksParseTreeMetricCalculator is a visitor computing AST based metrics. It also computes LOC. 
Right now only Number of MessageSends is computed in a correct manner.

Instance Variables:
	extendsSuper	<Boolean>	description of extendsSuper
	methodComplexity	<ArithmeticValue | CPointer>	description of methodComplexity
	numberOfLinesOfCode	<Magnitude | WindowSpec>	description of numberOfLinesOfCode
	numberOfMessageSends	<ArithmeticValue | CPointer>	description of numberOfMessageSends
	numberOfStatements	<ArithmeticValue | CPointer>	description of numberOfStatements
	parameterComplexityMultiplier	<Object>	description of parameterComplexityMultiplier

