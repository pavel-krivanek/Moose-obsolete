public - condition
ifNotConnectedThen: thenLayout
	"Apply a layout on the set of elements that are not connected.
	
	
	b := RTMondrian new.
	b nodes: Collection allSubclasses.
	b edges connectFrom: #superclass.
	b layout tree; ifNotConnectedThen: RTGridLayout new.
	b
	"

	^ self ifElement: #isNotConnected then: thenLayout