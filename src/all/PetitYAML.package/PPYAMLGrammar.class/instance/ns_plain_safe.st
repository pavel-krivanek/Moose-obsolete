spec
ns_plain_safe
	^ 
	(ns_plain_safe_out if: [ :context | context YAMLContext = #'flow-out' ]) /
	(ns_plain_safe_in  if: [ :context | context YAMLContext = #'flow-in' ]) /
	(ns_plain_safe_out if: [ :context | context YAMLContext = #'block-key' ]) /
	(ns_plain_safe_in  if: [ :context | context YAMLContext = #'flow-key' ]) 