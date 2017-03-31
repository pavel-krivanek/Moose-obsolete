private
exampleFromMethod: aCompiledMethod do: aBlock
	aBlock value: (self cache exampleAt: aCompiledMethod ifAbsentPut: [ self createExample: aCompiledMethod ])