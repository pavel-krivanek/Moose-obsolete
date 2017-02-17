building
compose
	"self new openOn: PPArithmeticParser new"

	self title: [ :each | 'Parser Inspector on ' , (each name ifNil: [ each class name ]) ].
	self tabulator
		with: [ :browser | 
			self browserStructureFor: browser.
			browser transmit
				fromOutsidePort: #entity;
				fromOutsidePort: #sampleText;
				to: #sample;
				andShowIfNone: [ :a | self sampleIn: a ].
			browser transmit
				from: #sample port: #text;
				toOutsidePort: #sampleText.
			browser transmit
				from: #sample;
				passivelyFrom: #sample port: #text;
				from: #sample port: #stream;
				fromOutsidePort: #entity;
				to: #inspectors;
				andShow: [ :a | self inspectorsIn: a ].	"result"	"sample text"	"parser stream"	"parser"
			browser transmit
				from: #inspectors;
				to: #sample port: #selectionInterval;
				transformed: [ :debugResult | debugResult ifNotNil: [ debugResult start to: debugResult end ] ] ]