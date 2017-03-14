PPProcessor is an abstract superclass to PPRewriter and PPSearcher. It implements common functionality to search and transform grammars.

The implementation of these matching algorithms is inspired from the refactoring engine by Don Roberts and John Brant. Contrary to the original implementation that worked on syntax trees, this implementation was generalized and works on possibly cyclic search patterns and grammar graphs.

Instance Variables:
	searches	<Collection of: PPRule>	The rules to be processed.
	context	<Dictionary>	The current search context.