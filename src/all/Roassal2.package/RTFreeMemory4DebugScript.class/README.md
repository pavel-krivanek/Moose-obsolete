Script to free Roassal objects.

MCHttpRepository
	location: 'http://www.smalltalkhub.com/mc/JohnBrant/ReferenceFinder/main'
	user: ''
	password: ‘’
	
Once loaded, you can evaluate something like "ReferenceFinder findPathToInstanceOf: MyClass”.  That will return a reference path or nil if no path exists from the Smalltalk global to an instance of MyClass. If you want to find a path to a particular instance, you can use “ReferenceFinder findPathTo: myInst”.

Here are an useful code snippet:

RTView allInstances size.
TRCanvas allInstances size.
AthensCairoSurface allInstances size.
Smalltalk garbageCollect.

ReferenceFinder findPathToInstanceOf: RTView.
ReferenceFinder findPathToInstanceOf: TRCanvas.
ReferenceFinder findPathToInstanceOf: AthensCairoSurface.

