as yet unclassified
removeDescriptionOf: aCompiledMethod
	| pragma meta attr |
	pragma := Pragma 
		inMethod: aCompiledMethod
		named: #(#MSEProperty:type:opposite: #MSEProperty:type: ).
	pragma isNil ifTrue: [ ^ self ].
	meta := tower metamodel descriptionOf: aCompiledMethod methodClass.
	attr := meta attributeNamed: pragma arguments first.
	attr opposite: nil.
	attr package: nil.
	attr mmClass: nil.