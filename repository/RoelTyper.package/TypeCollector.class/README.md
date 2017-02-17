I collect and assemble the types sent to instance variables for a certain class (I use the InterfaceExtractor for that), And use them to create and return TypingResults.

Instance Variables:
	assignments	<Object>	description of assignments
	instVarOffset	<Object>	description of instVarOffset
	instVars	<(Palette of: (ExceptionSet | GenericException | SequenceableCollection | Signal)) | (SequenceableCollection of: (ExceptionSet | GenericException | SequenceableCollection | Signal))>	description of instVars
	sends	<Object>	description of sends
	theClass	<ClassDescription>	description of theClass

