MooseQueryResult is the abstract class for holding the result of all MooseChef queries.
By default MooseQueryResults are assumed to contain a collection of associations between the entity in receiver and all the element in storage.
There are exceptions to this default: MooseIncoming/OutgoingInstanciationQueryResult , MooseObjectQueryResult , and MooseOutgoingCompositeQueryResult

Instance Variables:
	storage	the elements resulting of the queries
	receiver	the receiver of the query, necessary for example when we want to do a withoutSelfLoop