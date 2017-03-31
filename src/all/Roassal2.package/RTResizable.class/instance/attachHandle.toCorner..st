hooks
attachHandle: aHandle toCorner: aCorner
	"Make sure constraint is setup BEFORE resize callback is attached, otherwise it triggers very expensive resize updates."

	(RTConstraint on: aHandle background: element)
		perform: aCorner;
		border;
		stick.
	aHandle
		addCallback: (TRTranslationCallback block: [ :shape :step | self callbackFor: aHandle corner: aCorner ]).
	self addCursorEventsOn: aHandle corner: aCorner