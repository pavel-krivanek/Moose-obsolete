parsing
attachInformationTo: aSourceCodeLineList from: aModel 
	 
	super attachInformationTo: aSourceCodeLineList from: aModel. 
	cleaner storeCVSInfoTo: aSourceCodeLineList fromModel: aModel. 
	^nil