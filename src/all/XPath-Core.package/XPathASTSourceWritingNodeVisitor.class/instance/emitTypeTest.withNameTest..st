private
emitTypeTest: aNodeTest withNameTest: aNameTestString
	self
		emitAll: aNodeTest nodeType name;
		emit: $(;
		emitAll: aNameTestString;
		emit: $).
	^ aNodeTest