accessing
attributeAssociations
	^ Array
		with: 'one' -> '1'
		with: 'two' -> '2'
		with: 'prefix:two' -> '3'  "different from 'two', because of the prefix"
		with: 'prefix:four' -> '4'