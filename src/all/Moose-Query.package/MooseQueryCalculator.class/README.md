Description
-------------------

I am an object reponsible for the computation of a query. I am here to hide the implementations of queries to the entities. 

Examples
-------------------
	
	(MooseQueryCalculator direction: #in) query: FAMIXInvocation for: aMethod.
	
	(MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllLocalFor: aMethod.
	
	(MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) query: FAMIXInvocation for: aMethod.
 
Internal Representation and Key Implementation Points.
-------------------

    Instance Variables
	strategy:		<aMooseQueryDirectionStrategy> 		A strategy responsible of the behavior depending on the direction of the association

