spec
s_line_prefix
	^ 
	(s_block_line_prefix if: [ :context | context YAMLContext = #'block-out' ]) /
	(s_block_line_prefix if: [ :context |  context YAMLContext = #'block-in' ]) /
	(s_flow_line_prefix if: [ :context |  context YAMLContext = #'flow-out' ]) /
	(s_flow_line_prefix if: [ :context |  context YAMLContext = #'flow-in' ])