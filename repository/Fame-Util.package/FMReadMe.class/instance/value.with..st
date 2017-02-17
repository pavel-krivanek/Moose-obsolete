useful scripts
value: class with: stream 
	stream
		nextPutAll: 'm metaclass: ' , class name printString , ' instVarNames: ' , class class instVarNames printString;
		nextPut: $.;
		cr.
	class selectors do: 
		[ :selector | 
		stream
			nextPutAll: 'm class: ' , class name printString , ' compile: ' , (class sourceCodeAt: selector) asString printString;
			nextPut: $.;
			cr ]