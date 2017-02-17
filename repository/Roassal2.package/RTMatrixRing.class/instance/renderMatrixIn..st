hooks
renderMatrixIn: aView
	|  el rowSize columnSize betaAngle exRadius alphaAngle inRadius theMatrix theRow |
	self matrix ifNil: [^ self ].
	self elements: RTGroup new.
	theMatrix := rowBlock rtValue: self matrix.
	rowSize := theMatrix size.
	theMatrix doWithIndex: [:row :rowIndex |
		theRow := columnBlock rtValue: row. 
		columnSize := theRow size.
		betaAngle := 360 / columnSize.
		exRadius := (self externalRadius - self innerRadius)/rowSize.
		theRow doWithIndex: [:obj :column |  
			el := self shape elementOn: obj.
			el attributes 
				at: #row put:	rowIndex;
				at: #column put: column.
			alphaAngle := betaAngle * (column - 1).
			inRadius := self innerRadius + (exRadius*(rowIndex - 1)).
			el trachelShape 
				alphaAngle: alphaAngle 
				betaAngle:  alphaAngle + betaAngle
				innerRadius: inRadius 
				externalRadius: inRadius + exRadius - self rowGap.
			self elements add: el. ]
	].
	self interaction setUpElements: self elements.
	aView addAll: self elements.
