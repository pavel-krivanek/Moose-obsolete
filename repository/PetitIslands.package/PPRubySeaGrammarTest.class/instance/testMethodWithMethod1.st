as yet unclassified
testMethodWithMethod1
	self parse: 'def bar
		def baz
		end
end' rule: #methodDef.
	
	self assert: result size = 2.
	self assert: result first = '.bar.baz'.
	self assert: result second = '.bar'.
