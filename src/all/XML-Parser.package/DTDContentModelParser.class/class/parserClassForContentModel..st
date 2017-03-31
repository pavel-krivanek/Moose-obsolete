accessing
parserClassForContentModel: aContentModel
	"the tokenizer removes all spaces from the content model
	and checks it for well-formedness"
	(aContentModel at: 1) == $(
		ifTrue: [
			(aContentModel at: 2) == $# "#PCDATA mixed content"
				ifTrue: [^ DTDMixedContentModelParser]
				ifFalse: [^ DTDElementContentModelParser]]
		ifFalse: [^ DTDLiteralContentModelParser]