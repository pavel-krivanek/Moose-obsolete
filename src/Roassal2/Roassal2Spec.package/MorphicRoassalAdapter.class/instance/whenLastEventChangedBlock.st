protocol
whenLastEventChangedBlock
	self flag: 'Remove me'.
	"^ [ :evt | self model lastEvent: evt ]"
	^ [ :evt | ]