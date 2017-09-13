accessing
messages: aMessage
	"The Messages contained in this Interaction."
	self messages
		removeAll;
		addAll: aMessage