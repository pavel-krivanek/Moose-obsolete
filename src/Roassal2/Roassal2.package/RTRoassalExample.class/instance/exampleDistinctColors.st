sources
exampleDistinctColors

| b |
b := RTMondrian new.
b shape circle.
b nodes: Collection withAllSubclasses.
b edges connectFrom: #superclass.
b layout tree.
b normalizer
	normalizeSize: #numberOfMethods;
	distinctColorUsing: #package.
b build.
^ b view