utilities
benchmark: aParser
	"self benchmark: PPSmalltalkGrammar new"
	"self benchmark: PPSmalltalkParser new"
	"self benchmark: RBParser"
	
	| sources |
	sources := OrderedCollection new.
	SequenceableCollection withAllSubclassesDo: [ :class |
		class selectorsDo: [ :selector |
			sources add: (class sourceCodeAt: selector) ] ].
	^ self benchmark: aParser sources: sources asArray