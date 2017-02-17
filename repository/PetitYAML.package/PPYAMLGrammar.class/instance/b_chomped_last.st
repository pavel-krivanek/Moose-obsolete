spec
b_chomped_last 
	^ 
	((b_non_content / #eof asParser) if: [ :context | context YAMLChomp = #strip ]) /
	((b_as_line_feed / #eof asParser) if: [ :context | context YAMLChomp = #clip ]) /
	((b_as_line_feed / #eof asParser) if: [ :context | context YAMLChomp = #keep ])