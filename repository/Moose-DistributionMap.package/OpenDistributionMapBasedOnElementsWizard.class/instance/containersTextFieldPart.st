initialize - containers parts
containersTextFieldPart
	^ (TextFieldPart new)
		prefix: '[:element | ';
		suffix: ']';
		useLatePopulateContents: false;
		returnSuffixAndPrefix: true;
		transformed: [:outPutValue | outPutValue];
		defaultValue: 'element belongsTo'