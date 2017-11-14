moosequery-queries-generic
queryIncoming: aFAMIXClassAssociation
	"Query all the incoming associations of the FAMIXClassAssociation class for the receiver and its children.

	Example:
		aFAMIXClass queryIncoming: FAMIXInheritance.
			--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass or its children as target
	"

	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) query: aFAMIXClassAssociation for: self