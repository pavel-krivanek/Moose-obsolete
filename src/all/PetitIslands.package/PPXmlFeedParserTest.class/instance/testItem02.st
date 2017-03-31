as yet unclassified
testItem02
	self parse: '
	<item>
		<name>abc</name>
		<price>123</price>
	</item>
	' rule: #item.
	
	self assert: (result at: #name) = 'abc'.
	self assert: (result at: #price) = '123'.
	