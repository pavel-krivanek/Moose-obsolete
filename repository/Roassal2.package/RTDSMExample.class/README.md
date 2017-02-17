RTDSMExample new installTitle: 'EvolutionDSM' 
		code:
'
	| b option data labels input other |
	option := #(collab gtinspector).
	option := TRPlatform current dialogChooseFrom: option values: option.
	option ifNil: [ ^ nil ].
	
	data := RTTabTable new 
		input: (RTDSMExample perform: option)
		usingDelimiter: Character tab.
	labels := data removeFirstRow.
	input := Dictionary new.
	other := Set new.
	data values do: [ :line| | item timeline  | 
		item := input at: (line second) ifAbsentPut: [ Dictionary new ].
		other add: line third.
		timeline := item at: line third ifAbsentPut: [ OrderedCollection new ].
		timeline add: line first -> line fourth asNumber. ].

	b := RTEvolutionDSM new.
	b objectsY: input keys.
	b objectsX: other.
	b timeline: [ :assoc | (input at: assoc key) at: assoc value ifAbsent: [ nil ] ].
	b labelShape
		height: 30;
		color: Color blue.
	b shape shape allShapes first size: 100.
	b shape shape allShapes second
		size: 100;
		values: [ :assoc| 
			assoc timeline 
				ifNil:  [ nil ]
				ifNotNil: [ :ob | ob collect: #value ] ].
	b selectElement: [ :e| e model score notNil ].
	b score: [ :assoc | assoc score ].
	^ b 
	

'