tests
testAsFunctionSet
	| set function |

	set := self setClass new.
	function := self setElements anyOne.
	self
		assert: set asXPathFunctionSet == set;
		assert: (function asXPathFunctionSet) = (self setClass with: function);
		assert: self setElements asXPathFunctionSet = self setWithElements.