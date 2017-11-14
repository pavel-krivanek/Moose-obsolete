Description
--------------------

This trait provides a common, paradigm agnostic vocabulary to query dependencies of software entities.

It includes some generic way to query an entity via its associations. The API offer the possibility to query an entity with three parameters:
- The direction of the navigation (Incoming/Outgoing -- in/out)
- The kind of association (FAMIXAcces, FAMIXReference, all...)
- The scope of the query (The receiver, the receiver and its children)

The actual core of the algorithms are in MooseQueryCalculator class.

Most  of the generic methods takes a symbol to describe the direction. This symbol will be used to find a MooseQueryAbstactDirectionStrategy to configure a MooseQueryCalculator.

Public API and Key Messages
--------------------

- #query: aSymbol with: aFAMIXAssociation 				Looks for the associations of the kind aFAMIXAssociation in the direction described by the symbol in the receiver and its children.
- #queryLocal: aSymbol with: aFAMIXAssociation 		Looks for the associations of the kind aFAMIXAssociation in the direction described by the symbol in the receiver.
- #queryAll: aSymbol 									Looks for the associations in the direction described by the symbol in the receiver and its children.

There is a lot of other generic queries. You can find all of them in the "moose-queries-generic" protocol.

Examples
--------------------

	aFAMIXClass query: #in with: FAMIXInheritance.
		--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass or its children as target
			
	aFAMIXMethod query: #out with: FAMIXAccess.
		--> Will return a MooseOutgoingQueryResult containing the FAMIXAccess associations having aFAMIXMethod or its children as source
	
	
	aFAMIXClass queryLocal: #in with: FAMIXInheritance.
		--> Will return a MooseIncomingQueryResult containing the FAMIXInheritance associations having aFAMIXClass as target
	
	aFAMIXMethod queryLocal: #out with: FAMIXAccess.
		--> Will return a MooseOutgoingQueryResult containing the FAMIXAccess associations having aFAMIXMethod as source		
	
			
	aFAMIXClass queryAll: #in.
		--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass or its children as target
	
	aFAMIXMethod queryAll: #out.
		--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXMethod or its children as source
	
		
	aFAMIXClass queryAllLocal: #in.
		--> Will return a MooseIncomingQueryResult containing the FAMIXAssociation having aFAMIXClass as target
	
	aFAMIXMethod queryAllLocal: #out.
		--> Will return a MooseOutgoingQueryResult containing the FAMIXAssociation having aFAMIXMethod as source

