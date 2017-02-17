spec
s_flow_line_prefix
	^ s_indent, s_separate_in_line optional
	map: [ :indent :separate |
		"separate ifNil: [ '' ] "
		"
			From SPEC: Separation spaces are a presentation detail 
			and must not be used to convey content information. 
		"
		''
	]