accessing
allOutgoingAssociationTypes
	"Here we add a cache because this is heavely used in MooseQuery for the navigations."

	^ allOutgoingAssociationTypes
		ifNil: [ allOutgoingAssociationTypes := self privateAllOutgoingAssociationTypes ]