*XML-Parser-GTExtensions
gtInspectorImageIn: composite inContext: aGTInspector
	<gtInspectorPresentationOrder: 40>
	| client url |
	aGTInspector panes size > 1
		ifFalse: [ ^ self ].
	client := (aGTInspector panes reversed collect: [ :each | (each port: #entity) value ])
		detect: [ :each | (each isKindOf: ZnClient) and: [ each request notNil ] ]
		ifNone: [ ^ self ].
	url := client request absoluteUrl.
	^ composite morph
		title: 'Image';
		display:
				[ self
				formForImageEntity:
					(ZnClient new
						beOneShot;
						get: url / (self attributeAt: 'src');
						entity) ];
		when: [ (self isNamed: 'img') and: [ self includesAttribute: 'src' ] ]