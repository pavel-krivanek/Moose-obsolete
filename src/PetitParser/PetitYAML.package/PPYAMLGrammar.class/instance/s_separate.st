spec
s_separate
	^ 
	(s_separate_lines if: [ :context | context YAMLContext = #'block-out' ]) / 
	(s_separate_lines if: [ :context | context YAMLContext = #'block-in' ]) /
	(s_separate_lines if: [ :context | context YAMLContext = #'flow-out' ]) /
	(s_separate_lines if: [ :context | context YAMLContext = #'flow-in' ]) /
	(s_separate_in_line if: [ :context | context YAMLContext = #'block-key' ]) /
	(s_separate_in_line if: [ :context | context YAMLContext = #'flow-key' ])
