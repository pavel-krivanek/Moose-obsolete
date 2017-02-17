memoization
remember
	| memento |
	memento := PPContextMemento new
		stream: stream;
		position: stream position;
		yourself.
		
	self rememberProperties: memento.
	^ memento