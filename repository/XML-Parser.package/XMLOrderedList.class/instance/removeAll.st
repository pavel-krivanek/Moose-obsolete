removing
removeAll
	"Redefined because Collection>>removeAll assumes the collection can
	be safely modified while iterating it with do:"

	[self isEmpty] whileFalse: [self removeLast]