as yet unclassified
orderParts: aCollection

	^ aCollection sorted: [ :a :b | | sizea sizeb|
		sizea := (self elementsFor: a) sum: [ :e | elementsAndPropertyValue at: e ].
		sizeb := (self elementsFor: b) sum: [ :e | elementsAndPropertyValue at: e ].
		sizea >= sizeb ]