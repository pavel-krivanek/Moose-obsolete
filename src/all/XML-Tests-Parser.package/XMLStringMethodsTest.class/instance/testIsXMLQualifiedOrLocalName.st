tests
testIsXMLQualifiedOrLocalName
	self
		deny: ('' isXMLQualifiedOrLocalName: 'name');
		deny: ('' isXMLQualifiedOrLocalName: 'prefix:name');
		assert: ('name' isXMLQualifiedOrLocalName: 'name');
		assert: ('prefix:name' isXMLQualifiedOrLocalName: 'name');
		assert: ('prefix:name' isXMLQualifiedOrLocalName: 'prefix:name');
		deny: ('name' isXMLQualifiedOrLocalName: 'different');
		deny: ('name' isXMLQualifiedOrLocalName: 'prefix:name');
		deny: ('prefix:name' isXMLQualifiedOrLocalName: 'prefix:different');
		deny: ('prefix:name' isXMLQualifiedOrLocalName: 'different:name').

	"test wide char equality (redundant on Spur, but should remain as long
	as Cog and older VMs are supported)"
	self assert:
		((String with: 256 asCharacter)
			isXMLQualifiedOrLocalName:
				(String with: 256 asCharacter)).
	self assert:
		((String with: 16r039A asCharacter with: $: with: 16r039B asCharacter)
			isXMLQualifiedOrLocalName:
				(String with: 16r039B asCharacter)).