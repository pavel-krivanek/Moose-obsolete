moosequery-queries-generic
queryAllLocalOutgoing
	"Query all the outgoing associations of the receiver.
	This method differ from #queryAllOutgoing in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryAllLocalOutgoing.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXClass as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllLocalFor: self