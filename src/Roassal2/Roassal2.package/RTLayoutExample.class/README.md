Example about layouts

RTLayoutExample new installTitle: 'ConditionaLayoutInMondrian' 
		code:
		'
b := RTMondrian new.
b shape rectangle
	fillColor: Color white;
	borderColor: Color lightGray;
	withTextAbove: #name.
b nodes: Collection withAllSubclasses forEach: [ :cls |
	b nodes: cls methods.
	b edges connectToAll: #dependentMethods.
	b layout 
		ifElement: #isConnected then: RTTreeLayout new;
		else: RTGridLayout new.
 ].

b edges connectFrom: #superclass.
b layout tree.
b build.
^ b view'
	