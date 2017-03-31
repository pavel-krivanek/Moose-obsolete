as yet unclassified
testItem01
	self parse: '
	<item>
		<name>abc</name>
	</item>
	' rule: #item.
	
	self assert: (result at: #name) = 'abc'.
	