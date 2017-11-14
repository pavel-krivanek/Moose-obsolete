moosequery-queries-generic
queryLocalOutgoing: aFAMIXClassAssociation
	"Query all the outgoing associations of the FAMIXClassAssociation class for the receiver.
	This method differ from #queryOutgoing: in the fact that it will not check the associations of the reicever's children.
	
	Example:
		aFAMIXClass queryLocalOutgoing: FAMIXInheritance.
			--> Will return a MooseOutgoingQueryResult containing the FAMIXInheritance associations having aFAMIXClass as source
	"

	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryLocal: aFAMIXClassAssociation for: self