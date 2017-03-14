useful scripts
export: class name: name on: stream 
	stream
		nextPutAll: 'm class: ' , name printString , ' instVarNames: ' , class class instVarNames printString;
		nextPut: $.;
		cr.
	class selectors do: 
		[ :selector | 
		stream
			nextPutAll: 'm class: ' , name printString , 
				' heading: ', (class organization categoryOfElement: selector) printString ,
				' compile: ' , (class sourceCodeAt: selector) asString printString;
			nextPut: $.;
			cr ]