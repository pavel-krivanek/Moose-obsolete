building
buildBrowser
	browser := GLMTabulator new.
	browser
		column: #namespaces;
		column: #classes;
		column: #methods.
	browser transmit
		to: #namespaces;
		andShow: [ :a | self namespacesIn: a ].
	browser transmit
		to: #classes;
		from: #namespaces;
		andShow: [ :a | self classesIn: a ].
	browser transmit
		to: #methods;
		from: #classes;
		andShow: [ :a | self methodsIn: a ].
	browser transmit
		toOutsidePort: #namespace;
		from: #namespaces.
	browser transmit
		toOutsidePort: #class;
		from: #classes.
	browser transmit
		toOutsidePort: #method;
		from: #methods.
	browser transmit
		to: #namespaces port: #selection;
		fromOutsidePort: #namespaceToSelect.
	browser transmit
		to: #classes port: #selection;
		fromOutsidePort: #classToSelect.
	browser transmit
		to: #methods port: #selection;
		fromOutsidePort: #methodToSelect.
	^ browser