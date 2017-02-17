as yet unclassified
l_chomped_empty 	
	^ 
	(l_strip_empty if: [ :context | context YAMLChomp = #strip ]) /
	(l_strip_empty if: [ :context | context YAMLChomp = #clip ]) /
	(l_keep_empty if: [ :context | context YAMLChomp = #keep ])