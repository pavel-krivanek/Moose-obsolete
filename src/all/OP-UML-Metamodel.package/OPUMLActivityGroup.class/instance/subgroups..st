accessing
subgroups: anActivityGroup
	"Other ActivityGroups immediately contained in this ActivityGroup."
	self subgroups
		removeAll;
		addAll: anActivityGroup