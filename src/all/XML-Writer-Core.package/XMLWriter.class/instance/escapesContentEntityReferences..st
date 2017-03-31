accessing
escapesContentEntityReferences: aBoolean
	self escapesContentEntityReferences = aBoolean
		ifTrue: [^ self].
	aBoolean
		ifTrue: [
			self
				isEscaping: true;
				contentEscapes: ContentEscapes;
				contentStringEscapes: ContentStringEscapes]
		ifFalse: [
			self
				contentEscapes: ContentNonEntityEscapes;
				contentStringEscapes: ContentStringNonEntityEscapes]