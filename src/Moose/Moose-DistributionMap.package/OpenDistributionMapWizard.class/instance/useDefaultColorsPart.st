initialize-release
useDefaultColorsPart
	^ (CheckboxPart new)
		label: 'Use a default color for each disctinct value (will only diplay the first ten)';
		defaultValue: false;
		useLatePopulateContents: false;
		yourself