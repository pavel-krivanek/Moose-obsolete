forms
descriptionComment
	<magritteDescription>
	^ MAMemoDescription new
		required: false;
		accessor:
			(MAPluggableAccessor
				read:
					[ :me | me model ownedComments ifEmpty: [ '' ] ifNotEmpty: [ :oc | oc first body asString ] ]
				write: [ :me :newValue | 
					me model ownedComments ifEmpty: [ me model ownedComments add: OPUMLComment new ].
					me model ownedComments first body: newValue asString ]);
		label: 'Comment';
		priority: 100;
		yourself