initialize-release
propertyColorPartWithDefault: index
	^ (MorphDropListPart new)
		inGroupboxNamed: 'Color';
		useLatePopulateContents: false;
		list:
				(self colorCollection
						collect: [ :c | 
							(Morph new)
								extent: 80 @ 12;
								color: c ]);
		defaultValue: index;
		yourself