PPRule is the abstract superclass of all of the grammar search rules. A rule is the first class representation of a particular pattern to search for. The owner of the rule is the algorithms that actually executes the search. This arrangement allows multiple searches to be conducted by a single processor.

Instance Variables:
	owner	<PPProcessor>	The processor that is actually performing the search.
	search	<PPParser>	The parse pattern to be searched.
