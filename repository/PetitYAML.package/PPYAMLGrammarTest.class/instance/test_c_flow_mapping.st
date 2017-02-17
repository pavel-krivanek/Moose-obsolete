spec
test_c_flow_mapping
	self parse: '{ one : two , three: four , }' rule: #c_flow_mapping.
	self assert: result size = 2.
	self assert: (result at: 'one') = 'two'.
	self assert: (result at: 'three') = 'four'.
	
	self parse: '{ one: , ?:  }' rule: #c_flow_mapping.
	self assert: result size = 2.
	self assert: (result at: 'one') = nil.
	self assert: (result at: nil) = nil.

	self parse: '{ : omitted key  }' rule: #c_flow_mapping.
	self assert: result size = 1.
	self assert: (result at: nil) = 'omitted key'.

	
	self parse: '{
unquoted : "separate",
http://foo.com,
omitted value:,
: omitted key,
}' rule: #c_flow_mapping.
	self assert: result size = 4.
	self assert: (result at: 'unquoted') = 'separate'.
	self assert: (result at: 'http://foo.com') = nil.
	self assert: (result at: nil) = 'omitted key'.


	self parse: '{
"adjacent":value,
"readable": value,
"empty":
}'	rule: #c_flow_mapping.
	self assert: result size = 3.
	self assert: (result at: 'readable') = 'value'.	
	self assert: (result at: 'empty') = nil.	
	
	