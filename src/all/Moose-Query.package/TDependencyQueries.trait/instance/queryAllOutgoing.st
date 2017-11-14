moosequery-queries-generic
queryAllOutgoing
	"Query all the outgoing associations of the receiver and its children.

	Example:
		aFAMIXClass queryAllOutgoing.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXClass or its children as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllFor: self