actions
install

	self metaLink: (MetaLink new
		metaObject: self;
		selector: #breakpointReached;
		condition: condition arguments: conditionArguments;
		control: #after).
	targetMethod ast link: self metaLink.
