as yet unclassified
testShoplist03
	self parse: '
<shoplist>
	<name>xyz</name>
	<item>
		<name>abc</name>
		<price>123</price>
	</item>
	<item>
		<name>cde</name>
		<price>345</price>
	</item>
</shoplist>
	' rule: #shoplist.
	
	self assert: result size = 2.
	