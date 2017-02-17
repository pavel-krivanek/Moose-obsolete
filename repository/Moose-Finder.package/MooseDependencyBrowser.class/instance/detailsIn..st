reusable
detailsIn: a
	a roassal2
		initializeView: [ RTMondrianViewBuilder new ];
		title: 'Map of providers';
		painting: [ :view :model :namespace :class :method | 
					self
						viewNamespaceMapOf: [ :x | x providerNamespaces ]
						fromModel: model
						namespace: namespace
						class: class
						method: method
						on: view ];
		allowNil;
		when: [ :model | model notNil ].
	a roassal2
		initializeView: [ RTMondrianViewBuilder new ];
		title: 'Map of clients';
		painting: [ :view :model :namespace :class :method | 
					self
						viewNamespaceMapOf: [ :x | x clientNamespaces ]
						fromModel: model
						namespace: namespace
						class: class
						method: method
						on: view ];
		allowNil;
		when: [ :model | model notNil ].
	a text
		title: 'Source code';
		display: [ :model :namespace :class | class formattedSourceText ];
		allowNil;
		when: [ :model :namespace :class :method | class notNil and: [ method isNil ] ].
	^ a text
		title: 'Source code';
		display: [ :model :namespace :class :method | method formattedSourceText ]