private
resolveFunctionReference: aFunctionName contextNode: aContextNode arguments: anArgumentArray
	^ (self
		functionNamed: aFunctionName
		ifAbsent: [self errorUndeclaredFunction: aFunctionName])
			context: self
			contextNode: aContextNode
			arguments: anArgumentArray