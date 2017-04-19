accessing
escapesContentEntityReferences: aBoolean
	self escapesContentEntityReferences = aBoolean
		ifTrue: [^ self].
	aBoolean
		ifTrue: [
			self
				isEscaping: true;
				contentEscapes: self contentDefaultEscapes;
				contentStringEscapes: self contentStringDefaultEscapes]
		ifFalse: [
			self
				contentEscapes: self contentNonEntityEscapes;
				contentStringEscapes: self contentStringNonEntityEscapes]