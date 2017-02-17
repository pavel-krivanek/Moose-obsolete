private
hasFamePragmas: aCompiledMethod 
	
	^aCompiledMethod pragmas anySatisfy: [ :each |
		(each keyword beginsWith: 'MSE') ]