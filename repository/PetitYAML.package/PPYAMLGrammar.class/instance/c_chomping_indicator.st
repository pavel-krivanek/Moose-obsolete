spec
c_chomping_indicator
	^ 	($- asParser, [ :context | context YAMLChomp: #strip. #strip ] asParser) / 
		($+ asParser, [ :context | context YAMLChomp: #keep. #keep ] asParser) / 
		(nil asParser, [ :context | context YAMLChomp: #clip. #clip ] asParser)