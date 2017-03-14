interface specs
originateDialog 
	"UIPainter new openOnClass: self andSelector: #originateDialog" 
	 
	<resource: #canvas> 
	^#(#FullSpec  
		#window: #(#WindowSpec  
			#label: 'Originate'  
			#bounds: #(#Rectangle 301 390 587 741)  
			#flags: 8)  
		#component: #(#SpecCollection  
			#collection: #(#(#LabelSpec  
				#layout: #(#AlignmentOrigin 0 0.5 2 0 0.5 0)  
				#label: 'Originate a new packet') #(#LabelSpec  
				#layout: #(#Point 3 30)  
				#label: 'Originator') #(#LabelSpec  
				#layout: #(#Point 3 95)  
				#label: 'Addressee') #(#LabelSpec  
				#layout: #(#Point 3 160)  
				#label: 'Contents') #(#MenuButtonSpec  
				#layout: #(#LayoutFrame 10 0 55 0 -10 1 80 0)  
				#model: #originator  
				#menu: #originators) #(#MenuButtonSpec  
				#layout: #(#LayoutFrame 10 0 120 0 -10 1 145 0)  
				#model: #addressee  
				#menu: #addressees) #(#TextEditorSpec  
				#layout: #(#LayoutFrame 10 0 185 0 -10 1 -40 1)  
				#model: #contents) #(#ActionButtonSpec  
				#layout: #(#LayoutFrame 20 0 -30 1 -50 0.5 -3 1)  
				#model: #accept  
				#label: 'Accept') #(#ActionButtonSpec  
				#layout: #(#LayoutFrame 50 0.5 -30 1 -20 1 -3 1)  
				#model: #cancel  
				#label: 'Cancel'))))