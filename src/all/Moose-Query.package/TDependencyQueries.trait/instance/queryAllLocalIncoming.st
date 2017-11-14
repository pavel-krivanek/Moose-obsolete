moosequery-queries-generic
queryAllLocalIncoming
	"Query all the incoming associations of the receiver.
	This method differ from #queryAllIncoming in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryAllLocalIncoming.
			--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryAllLocalFor: self