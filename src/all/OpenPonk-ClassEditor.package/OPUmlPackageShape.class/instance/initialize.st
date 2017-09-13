initialization
initialize
	self stereotypeText: [ :aModel | '' ].
	self labelText: [ :aModel | 'nil' ].
	self showTriangle: [ :aModel | false ].
	super initialize