spec
l_block_mapping
	^ (( s_indent"(n+m)", ns_l_block_map_entry"(n+m) ") plus
	"/* For some fixed auto_detected m > 0 */ "
	
	>=> [ :context :cc |
		| retval size |
		size := context indentStack size.
		context YAMLN: (context YAMLN + (self autoDetect: context)).
		self assert: (size + 1) = (context indentStack size).
		retval := cc value.
		
		context YAMLRestoreN.
		retval
	])	map: [ :results |
		| retval |
		retval := Dictionary new.
		(results collect: [ :e | e second ]) do: [:r | retval at: r key put: r value ].
		retval
	]
