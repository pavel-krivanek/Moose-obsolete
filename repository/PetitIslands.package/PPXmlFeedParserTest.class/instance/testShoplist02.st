as yet unclassified
testShoplist02
	self parse: '
<shoplist>
	<name>xyz</name>
	<item>
		<name>abc</name>
		<price>123</price>
	</item>
</shoplist>
	' rule: #shoplist.
	
	self assert: result size = 1.
	