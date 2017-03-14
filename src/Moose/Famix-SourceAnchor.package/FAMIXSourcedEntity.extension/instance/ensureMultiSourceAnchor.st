*Famix-SourceAnchor
ensureMultiSourceAnchor
	"This method is also used by other packages"
	^self sourceAnchor
		ifNil: [ 
			self
				sourceAnchor:
					(FAMIXMultipleFileAnchor new
						element: self;
						mooseModel: self mooseModel;
						yourself);
				sourceAnchor]