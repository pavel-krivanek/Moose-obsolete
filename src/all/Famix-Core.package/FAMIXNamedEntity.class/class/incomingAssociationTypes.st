accessing
incomingAssociationTypes
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ incomingAssociationTypes
		ifNil: [ incomingAssociationTypes := self privateIncomingAssociationTypes ]