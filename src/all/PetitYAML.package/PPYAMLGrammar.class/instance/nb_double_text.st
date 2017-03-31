spec
nb_double_text
	^ 
	(nb_double_multi_line if: [:context | context YAMLContext = #'flow-out' ]) /
	(nb_double_multi_line if: [:context | context YAMLContext = #'flow-in' ]) /
	(nb_double_one_line if: [:context | context YAMLContext = #'block-key' ]) /
	(nb_double_one_line if: [:context | context YAMLContext = #'flow-key' ])