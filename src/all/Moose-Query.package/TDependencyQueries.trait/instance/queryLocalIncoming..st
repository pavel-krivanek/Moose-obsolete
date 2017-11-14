moosequery-queries-generic
queryLocalIncoming: aFAMIXClassAssociation
	"Query all the incoming associations of the FAMIXClassAssociation class for the receiver.
	This method differ from #queryIncoming: in the fact that it will not check the associations of the reicever's children.

	Example:
		aFAMIXClass queryLocalIncoming: FAMIXInheritance.
			--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryLocal: aFAMIXClassAssociation for: self