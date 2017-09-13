accessing
profileApplications: aProfileApplication
	"References the ProfileApplications that indicate which profiles have been applied to the Package."
	self profileApplications
		removeAll;
		addAll: aProfileApplication