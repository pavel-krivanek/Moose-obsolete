accessing
navigableOwnedEnds
	"The navigable ends that are owned by the Association itself."
	^ navigableOwnedEnds ifNil: [ navigableOwnedEnds := OrderedCollection new ]