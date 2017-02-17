morph content setup tools
newMainDevRadioButton

	^ self newRadionButtonFor: self 
			getSelected: #isMainDev 
			setSelected: #beMainDev 
			label: 'Main developement'


