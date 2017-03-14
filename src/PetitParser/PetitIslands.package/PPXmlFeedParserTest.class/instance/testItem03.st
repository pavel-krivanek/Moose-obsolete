as yet unclassified
testItem03
	self parse: '
	<item>
		<price>123</price>
		<name>abc</name>
	</item>
	' rule: #item.
	
	self assert: (result at: #name) = 'abc'.
	self assert: (result at: #price) = '123'.
	