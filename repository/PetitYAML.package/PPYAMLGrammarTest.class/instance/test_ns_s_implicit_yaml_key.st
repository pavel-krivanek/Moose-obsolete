spec
test_ns_s_implicit_yaml_key
	self parse: 'single ' rule: #ns_s_implicit_yaml_key.
	
	self assert: result = 'single'.