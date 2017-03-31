tests
testNameAndUniqueName
	| mseClass mseMethod mseAttribute mseGlobalVar mseImplicitVar mseLocalVariable mseFormalParameter transcriptName |
	mseClass := self model entityNamed: LANNode mooseName.
	self assert: mseClass name == #LANNode.
	self
		assert:
			mseClass mooseName
				==
					(FAMIXNameResolver
						uniqueNameForClassNamed: LANNode name
						scope: (FAMIXNameResolver moosify: LANNode environment absoluteName)).
	self assert: mseClass mooseName == LANNode mooseName.
	mseMethod := self model entityNamed: #'Smalltalk::LANPacket.printOn:(Object)'.
	self assert: mseMethod name == #printOn:.
	self assert: mseMethod mooseName == #'Smalltalk::LANPacket.printOn:(Object)'.
	self assert: mseMethod signature == #'printOn:(Object)'.
	mseAttribute := self model entityNamed: (LANNode mooseNameOf: 'name') asSymbol.
	self assert: mseAttribute mooseName == (LANNode mooseNameOf: 'name').
	self assert: mseAttribute name == #name.
	transcriptName := #Transcript.
	mseGlobalVar := self model entityNamed: transcriptName.
	self assert: mseGlobalVar name == transcriptName.
	self assert: mseGlobalVar mooseName == transcriptName.	"self assert: (mseGlobalVar interfaceSignatures includes: #cr)."
	mseImplicitVar := self model entityNamed: LANNode mooseName , '.accept:(Object).self'.
	self assert: mseImplicitVar name == #self.
	self assert: mseImplicitVar mooseName equals: LANNode mooseName , '.accept:(Object).self'.	"self assert: (mseImplicitVar interfaceSignatures includes: #send:)."
	mseImplicitVar := self model entityNamed: LANNode mooseName , '.printOn:(Object).super'.
	self assert: mseImplicitVar name == #super.
	self assert: mseImplicitVar mooseName == (LANNode mooseName , '.printOn:(Object).super') asSymbol.
	mseLocalVariable := self model entityNamed: #'Smalltalk::LANInterface.originate().packet'.
	self assert: mseLocalVariable name == #packet.
	self assert: mseLocalVariable mooseName == #'Smalltalk::LANInterface.originate().packet'.
	mseFormalParameter := self model entityNamed: (LANNode mooseNameOf: 'nextNode:(Object).aNode').
	self assert: mseFormalParameter name == #aNode.
	self assert: mseFormalParameter mooseName == (LANNode mooseNameOf: 'nextNode:(Object).aNode')	"self assert: mseFormalParameter position = 1"