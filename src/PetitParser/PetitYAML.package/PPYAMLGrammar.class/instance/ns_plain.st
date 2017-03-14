spec
ns_plain
	^ 
	(ns_plain_multi_line if: [: context | context YAMLContext = #'flow-out'  ]) /
	(ns_plain_multi_line if: [: context | context YAMLContext = #'flow-in'  ]) /
	(ns_plain_one_line if: [: context | context YAMLContext = #'block-key'  ]) /
	(ns_plain_one_line if: [: context | context YAMLContext = #'flow-key'  ])