spec
test_c_flow_json_content
	self parse: '"a"' rule: #c_flow_json_content.
	self assert: result = 'a'.