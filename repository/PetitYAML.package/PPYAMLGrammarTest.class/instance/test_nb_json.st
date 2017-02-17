spec
test_nb_json
	self parse: ' ' rule: #nb_json.
	self parse: 'a' rule: #nb_json.
	self fail: String cr rule: #nb_json.