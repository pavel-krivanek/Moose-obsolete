MooseOutgoingCompositeQueryResult holds the results of "sure" or "all" outgoing dependency queries, that s to say queryAllOutgoingDependencies and queryAllOutgoingDependencies.
These are the two queries that may result in a mix of invocation + others (references, inheritances, accesses).
For example note that queryStaticOutgoingDependencies will not return invocations.

This is necessary because MooseOutgoingInvocationQueryResult behave differently than other MooseOutgoingQueryResult: the opposite query may return a list of elements for an outgoing invocation whereas it is not the case of an outgoing access or an incoming invocation.