as yet unclassified
testShoplist01
	self parse: '
<shoplist>
	<item>
		<name>abc</name>
	</item>
</shoplist>
	' rule: #shoplist.
	
	self assert: result size = 1.
	