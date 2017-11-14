MooseQueryResult is the abstract class for holding the result of all Moose-Query queries.
By default MooseQueryResults are assumed to contain a collection of associations between the entity in receiver and all the element in storage at the exception of  MooseObjectQueryResult.

Instance Variables:
	storage	the elements resulting of the queries
	receiver	the receiver of the query, necessary for example when we want to do a withoutSelfLoop