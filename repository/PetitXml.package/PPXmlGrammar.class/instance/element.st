grammar
element
	"[39]   	element	   ::=   	 EmptyElemTag | STag content ETag"
	
	^ $< asParser , qualified , attributes , whitespace optional , ('/>' asParser / ($> asParser , content , [ :stream | stream position ] asParser , '</' asParser , qualified , whitespace optional , $> asParser)) ==> [ :nodes | 
		nodes fifth = '/>'
			ifTrue: [ Array with: nodes second with: nodes third with: #() ]
			ifFalse: [
				nodes second = nodes fifth fifth
					ifTrue: [ Array with: nodes second with: nodes third with: nodes fifth second ]
					ifFalse: [ PPFailure message: 'Expected </' , nodes second qualifiedName , '>' context: nil at: nodes fifth third ] ] ]