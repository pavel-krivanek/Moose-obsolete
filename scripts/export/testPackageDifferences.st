| packageNames repo result snap patch corrupted |

packageNames := STON fromStream: 'packages.ston' asFileReference readStream.

repo := MCFileTreeRepository new
	directory: './Moose/src/all' asFileReference;
	yourself.

result := packageNames collect: [ :pn | 
	FileStream stdout << pn; lf.
	[ 
	snap := (repo versionWithInfo: (MCPackage named: pn) workingCopy ancestry ancestors first) snapshot.
	patch := (MCPackage named: pn) workingCopy completeSnapshot patchRelativeToBase: snap.
	corrupted := patch isEmpty
		ifTrue: [ false ]
		ifFalse: [ patch ] ] ifError: [:e | corrupted := e ].
	pn -> corrupted ].

result reject: [ :each | each value = false ].
