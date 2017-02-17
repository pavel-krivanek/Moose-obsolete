grammar
addition
	^ (factors separatedBy: ($+ asParser / $- asParser) trim) 
		foldLeft: [ :a :op :b | a perform: op asSymbol with: b ]