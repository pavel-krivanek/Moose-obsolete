spec
test_s_nb_spaced_text
	self parse: '   * bullet' rule: #s_nb_spaced_text.
	self assert: result = '   * bullet'.