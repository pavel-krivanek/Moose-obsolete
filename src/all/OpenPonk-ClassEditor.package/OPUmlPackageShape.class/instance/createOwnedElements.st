creating - subelements
createOwnedElements
	| mainLabel triangle ear mainStereotype earOverlay |
	ear := RTBox new
		width: self minWidth * self earScaling;
		height: 25;
		fillColor: [ self shape colorFor: self ];
		borderColor: [ self shape borderColorFor: self ];
		elementOn: self.
	self add: ear.
	triangle := RTSVGPath new
		path: 'M0,0L10,-10L20,0z';
		fillColor: [ :aModel | 
			self showTriangle
				ifTrue: [ Color veryVeryLightGray ]
				ifFalse: [ Color transparent ] ];
		borderColor: [ :aModel | 
			self showTriangle
				ifTrue: [ self shape borderColorFor: self ]
				ifFalse: [ Color transparent ] ];
		"		vertices: (Array with: 0 @ 0 with: 10 @ -10 with: 20 @ 0);"
			elementOn: self.
	self add: triangle.
	mainLabel := RTLabel new
		text: #labelText;
		color: [ self fontColor ];
		elementOn: self.
	self add: mainLabel.
	mainStereotype := RTLabel new
		text: #stereotypeText;
		height: (mainLabel shape heightFor: mainLabel) - 2;
		color: [ self fontColor ];
		elementOn: self.
	self add: mainStereotype.
	(RTConstraint on: ear background: self)
		top;
		left;
		verticalPadding: ear height negated;
		stick.
	(RTConstraint on: triangle background: self)
		top;
		right;
		padding: 15;
		stick.
	(RTConstraint on: mainLabel background: self) stick.
	(RTConstraint on: mainStereotype background: mainLabel)
		top;
		outer;
		stick.
	self
		addCallback: (TRExtentCallback block: [ :sh :st | ear width: self width * self earScaling ]).
	mainLabel
		addCallback:
			(TRExtentCallback
				block: [ :sh :st | 
					| width |
					width := {self minWidth.
					mainLabel width + self padding} max.
					self shape width: width.
					ear width: width * self earScaling ])