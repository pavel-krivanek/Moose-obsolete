spec
test_s_l_block_node
	context YAMLContext: #'block-in'.
	context YAMLN: -1.

	self parse: '-
  "flow in block"
- >
 Block scalar
- foo : bar
' rule: #s_l_block_node.
	self assert: result size = 3.
	
	self assert: result first = 'flow in block'.
	self assert: result second = ('Block scalar', String cr).
	self assert: (result third at: 'foo') = 'bar'.
	
	
	context YAMLContext: #'block-in'.
	context YAMLN: -1.
	self parse: 'literal: |2
  value
folded:
   >1
 value' rule: #s_l_block_node.
	self assert: result size = 2.
	self assert: (result at: 'literal') = ('value', String cr).
	self assert: (result at: 'folded') = 'value'.