tests
testMatchesAttributes
	| attributeSpec |

	attributeSpec := #() asXMLAttributeSpec.
	self assert: (attributeSpec matchesAttributes: Dictionary new).
	self assert:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name' -> 'value')).

	attributeSpec := (Array with: 'name' -> 'value') asXMLAttributeSpec.
	self deny: (attributeSpec matchesAttributes: Dictionary new).
	self deny:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name' -> 'value2')).
	self deny:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name2' -> 'value')).
	self assert:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name' -> 'value')).

	attributeSpec := (Array with: 'name' -> 'value' with: 'name2') asXMLAttributeSpec.
	self deny: (attributeSpec matchesAttributes: Dictionary new).
	self deny:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name' -> 'value2')).
	self deny:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name2' -> 'value')).
	self deny:
		(attributeSpec matchesAttributes:
			(Dictionary
				with: 'name' -> 'value2'
				with: 'name2' -> 'value')).
	self assert:
		(attributeSpec matchesAttributes:
			(Dictionary
				with: 'name' -> 'value'
				with: 'name2' -> 'value2')).
	self assert:
		(attributeSpec matchesAttributes:
			(Dictionary
				with: 'name' -> 'value'
				with: 'name2' -> 'value2'
				with: 'name3' -> 'value3')).

	attributeSpec := (Array with: 'name3' -> [:value | value endsWith: '3']) asXMLAttributeSpec.
	self deny: (attributeSpec matchesAttributes: Dictionary new).
	self deny:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name3' -> 'value2')).
	self assert:
		(attributeSpec matchesAttributes:
			(Dictionary with: 'name3' -> 'value3')).