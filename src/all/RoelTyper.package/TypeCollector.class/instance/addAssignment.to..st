adding
addAssignment: value to: index
	self
		withTranslatedIndex: index
		do: [:i | (self typingResults at: i) addAssignment: value]