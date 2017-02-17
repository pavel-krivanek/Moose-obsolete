tests - complex
testMappingClipStripKeep
	| string |
	
	context YAMLN: -1.
	context YAMLContext: #'block-in'.
	string :=
'strip: >-

clip: >

keep: |+

'.

	self parse: string rule: #l_block_mapping.
	self assert: result size = 3.
	self assert: (result at: 'strip') = ''.
	self assert: (result at: 'clip') = ''.	
	self assert: (result at: 'keep') = String cr.