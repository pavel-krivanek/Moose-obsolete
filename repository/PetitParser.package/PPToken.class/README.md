PPToken represents a parsed part of the input stream. Contrary to a simple String it remembers where it came from, the original collection and its start and stop position.

Instance Variables:
	collection	<SequenceableCollection>	The collection this token comes from.
	start	<Integer>	The start position in the collection.
	stop	<Integer>	The stop position in the collection.