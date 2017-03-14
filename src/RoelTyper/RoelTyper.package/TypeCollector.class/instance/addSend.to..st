adding
addSend: selector to: index
	"Add a range check to filter out sends to instvars defined in superclasses, etc."

	self
		withTranslatedIndex: index
		do: [:i | (self typingResults at: i) addSend: selector]