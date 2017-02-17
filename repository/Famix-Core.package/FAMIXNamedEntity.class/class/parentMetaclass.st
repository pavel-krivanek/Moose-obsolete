as yet unclassified
parentMetaclass
	^((self class >> #annotation) pragmas select: [ :p | p keyword = 'parentMetaClass:' ]) collect: [:p | p arguments first ]