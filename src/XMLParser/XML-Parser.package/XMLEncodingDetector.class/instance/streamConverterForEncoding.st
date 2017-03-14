detecting
streamConverterForEncoding
	| handlerTableIndex handlerSelector |

	"the index is asciiValue + 1 for null"
	(stream atEnd not
		and: [(handlerTableIndex := self peek asciiValue + 1) <= EncodingHandlerTable size
			and: [(handlerSelector := EncodingHandlerTable at: handlerTableIndex) notNil]])
		ifTrue: [^ self perform: handlerSelector]
		ifFalse: [^ nil]