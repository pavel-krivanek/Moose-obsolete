interface specs
windowSpec 
	"UIPainter new openOnClass: self andSelector: #windowSpec" 
	 
	<resource: #canvas> 
	^#(#FullSpec  
		#window: #(#WindowSpec  
			#label: 'Local Area Network'  
			#bounds: #(#Rectangle 189 174 816 582))  
		#component: #(#SpecCollection  
			#collection: #(#(#GroupBoxSpec  
				#layout: #(#LayoutFrame 5 0 0 0 -120 1 50 0)  
				#label: 'Create') #(#ActionButtonSpec  
				#layout: #(#Rectangle 20 20 120 45)  
				#model: #newWorkstation  
				#label: 'Workstation') #(#ActionButtonSpec  
				#layout: #(#Rectangle 140 20 240 45)  
				#model: #newNode  
				#label: 'Node') #(#ActionButtonSpec  
				#layout: #(#Rectangle 260 20 360 45)  
				#model: #newPrintServer  
				#label: 'PrintServer') #(#ActionButtonSpec  
				#layout: #(#Rectangle 380 20 480 45)  
				#model: #newFileServer  
				#label: 'FileServer') #(#ActionButtonSpec  
				#layout: #(#LayoutFrame -105 1 20 0 -5 1 45 0)  
				#name: #removeButton  
				#model: #remove  
				#label: 'Remove') #(#SequenceViewSpec  
				#layout: #(#LayoutFrame 5 0 60 0 -5 1 -130 1)  
				#name: #nodeList  
				#flags: 15  
				#model: #nodeList  
				#useModifierKeys: true  
				#selectionType: #highlight) #(#LabelSpec  
				#layout: #(#LayoutOrigin 5 0 -110 1)  
				#label: 'Name:') #(#LabelSpec  
				#layout: #(#LayoutOrigin 5 0 -75 1)  
				#label: 'Next Node:') #(#ActionButtonSpec  
				#layout: #(#LayoutFrame -50 0.5 -30 1 50 0.5 -5 1)  
				#name: #originateButton  
				#model: #originate  
				#label: 'Originate') #(#InputFieldSpec  
				#layout: #(#LayoutFrame 80 0 -110 1 300 0 -85 1)  
				#name: #nodeName  
				#model: #nodeName  
				#callbacksSpec: #(#UIEventCallbackSubSpec #valueChangeSelector:)  
				#type: #symbol) #(#MenuButtonSpec  
				#layout: #(#LayoutFrame 80 0 -75 1 300 0 -50 1)  
				#name: #nextNodeMenu  
				#model: #nextNode  
				#callbacksSpec: #(#UIEventCallbackSubSpec #valueChangeSelector:)  
				#menu: ))))