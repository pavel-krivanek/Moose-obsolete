parsing
parseInput
	hasOptionalArgument := false.
	hasUnboundedArgument := false.

	self
		nextReturnType;
		nextFunctionName;
		nextArgumentList.