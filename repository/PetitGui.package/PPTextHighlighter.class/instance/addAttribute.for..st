public
addAttribute: aTextAttribute for: anElementString 
	| attributes |
	attributes := self attributeMapper at: anElementString ifAbsentPut: [OrderedCollection new].
	attributes add: aTextAttribute