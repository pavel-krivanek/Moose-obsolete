as yet unclassified
ns_l_compact_sequence
	^ c_l_block_seq_entry, (s_indent, c_l_block_seq_entry ==> #second) star
	map: [ :first :rest |
		rest asOrderedCollection addFirst: first; yourself
	] 