spec
test_c_flow_sequence
	self parse: '[three ,four, five]' rule: #c_flow_sequence.
	self assert: result size = 3.
	self assert: result first = 'three'.
	self assert: result second = 'four'.
	self assert: result third = 'five'.
	
	
	self parse: '[ one, two, ]' rule: #c_flow_sequence.
	
	self assert: result size = 2.
	self assert: result first = 'one'.
	self assert: result second = 'two'.
	
	self parse: '[
foo: bar
]' rule: #c_flow_sequence.
	self assert: result size = 1.
	self assert: (result first at: 'foo') = 'bar'.
	
	self parse: '[
? foo
 bar : baz
]'	rule: #c_flow_sequence.
	self assert: result size = 1.
	self assert: (result first at: 'foo bar') = 'baz'.
	
	self parse: '[ foo, bar ]'	rule: #c_flow_sequence.
	self assert: result size = 2.
	self assert: result first = 'foo'.
	self assert: result second = 'bar'.
	
	self parse: '[ a, b ]'	rule: #c_flow_sequence.
	self assert: result size = 2.
	self assert: result first = 'a'.
	self assert: result second = 'b'