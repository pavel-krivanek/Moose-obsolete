symbol - value
testSymbolInPlaceOfBlock
	"self debug: #testSymbolInPlaceOfBlock"
	
	self assert: (#(1 2 3 4) collect: #odd) =  #(true false true false).
	self assert: (#(1 2 3 4) select: #odd) =  #(1 3).