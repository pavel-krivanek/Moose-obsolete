*GT-Examples-Core
gtExamplesContained
	| examples |
	examples := OrderedCollection new.
	self methods do: [ :method |
		examples addAll: method gtExamples ].
	" temporary HACK since all examples are packaged into GT-Examples-Examples due to alpha state >>> "
	self classesAndMetaClasses do: [ :class | 
		(class organization protocolNamed: '*GT-Examples-Examples') ifNotNil: [ :protocol |
			protocol methods do: [ :selector |
				examples addAll: (class >> selector) gtExamples ] ] ].
	" <<< "
	^ examples