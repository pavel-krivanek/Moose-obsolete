accessing
publicInterface
	^ #(
		#(#FM3 #(#boolean #number #object #string ) #() )
		#(#FM3Element #(#new ) #(#fullName #name #name: #owner ) )
		#(
			#FM3MetaDescription
			#(#new )
			#(
				#allAttributes
				#allAttributesDo:
				#at:
				#attributeNamed:
				#attributeNamed:ifAbsent:
				#attributes
				#attributes:
				#createInstance
				#hasOwner
				#hasPackage
				#hasSuperclass
				#isAbstract
				#isAbstract:
				#isPrimitive
				#isRoot
				#owner
				#ownerAttribute
				#package
				#package:
				#superclass
				#superclass:
			)
		)
		#(
			#FM3PackageDescription
			#(#new )
			#(
				#at:
				#classNamed:
				#classes
				#classes:
				#extensions
				#extensions:
				#hasOwner
			)
		)
		#(
			#FM3PropertyDescription
			#(#new )
			#(
				#getFrom:
				#hasKey
				#hasMmClass
				#hasOpposite
				#hasOwner
				#isComposite
				#isContainer
				#isContainer:
				#isDerived
				#isDerived:
				#isMultivalued
				#isMultivalued:
				#key
				#key:
				#mmClass
				#mmClass:
				#opposite
				#opposite:
				#owner
				#package
				#package:
				#setOn:values:
				#type
				#type:
			)
		)
		#(
			#FMDebugClient
			#(#new )
			#(#contents #exportString #replayOn: #reset )
		)
		#(
			#FMImporter
			#(#new )
			#(
				#fromString:
				#repository
				#repository:
				#run
				#stream
				#stream:
			)
		)
		#(#FMInferencer #(#new ) #(#client #client: #run ) )
		#(
			#FMLicense
			#()
			#(#authors #copyrightNotice #copyrightNoticeFull )
		)
		#(
			#FMMSEParser
			#(#new )
			#(
				#client
				#client:
				#run
				#fromString:
				#stream:
				#stream
			)
		)
		#(#FMMSEPrinter #(#new ) #() )
		#(
			#FMMetaRepository
			#(#fm3 #with: )
			#(
				#add:
				#addSmalltalkClasses:
				#addSmalltalkNamespace:
				#at:
				#classes
				#descriptionOf:
				#descriptionOf:ifAbsent:
				#elementNamed:
				#isMetaMetamodel
				#isMetamodel
				#packages
				#properties
			)
		)
		#(
			#FMModelBuilder
			#(#new )
			#(
				#a:of:
				#add:with:
				#an:of:
				#client
				#client:
				#document:
				#id:
				#new:with:
				#ref:
			)
		)
		#(
			#FMParserClient
			#(#new )
			#(
				#beginAttribute:
				#beginDocument
				#beginElement:
				#endAttribute:
				#endDocument
				#endElement:
				#primitive:
				#referenceName:
				#referenceNumber:
				#serial:
			)
		)
		#(
			#FMPragmaProcessor
			#(#new )
			#(#asMetamodel #asTower #buildFM3 #queue: #run )
		)
		#(
			#FMPrintClient
			#(#new )
			#(#onString #onString: #stream #stream: )
		)
		#(
			#FMRepository
			#(#with: )
			#(
				#accept:
				#add:
				#addAll:
				#asMetarepository
				#compositeDelete:
				#containerOf:
				#elements
				#exportOn:
				#exportString
				#get:element:
				#importStream:
				#importString:
				#isEmpty
				#isMetaMetamodel
				#isMetamodel
				#metaDescriptionOf:
				#metamodel
				#selectKindOf:
				#set:element:values:
				#size
			)
		)
		#(
			#FMRuntimeElement
			#(#with: )
			#(#at: #at:put: #description #description: )
		)
		#(
			#FMTower
			#(#new )
			#(
				#fameDescriptionByClass:
				#fameDescriptionFor:
				#metaMetamodel
				#metamodel
				#model
			)
		)
		#(#FMXMLPrinter #(#new ) #() )
		#(
			#FMMultivalueLink
			#(#on:opposite: #on:update:from:to: )
			#()
		)
		#(
			#FMMultiMultivalueLink
			#(#on:opposite: #on:update:from:to: )
			#()
		)
	)