tests
testProcessingInstructionTypeTest
	| xml |

	xml := '<root>before<?one two?><?three four?>after</root>' parseXML.
	self
		assertNodeSet: (xml xPath: '// processing-instruction ()')
		hasNodes: (xml root nodes copyFrom: 2 to: 3).
	self
		assertNodeSet: (xml xPath: '// processing-instruction ( "three" )')
		hasNodes: (xml root nodes copyFrom: 3 to: 3).
	self
		assertNodeSet: (xml xPath: '// processing-instruction ( one )')
		hasNodes: (xml root nodes copyFrom: 2 to: 2).