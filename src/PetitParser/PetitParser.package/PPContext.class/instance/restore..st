memoization
restore: aPPContextMemento
	aPPContextMemento stream == stream ifFalse: [ self error: 'Oops!' ].

	stream position: aPPContextMemento position.
	self restoreProperties: aPPContextMemento.