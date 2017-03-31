as yet unclassified
buildBrowser 
	browser := GLMFinder new.
	browser show: [:a | 
		a list 
			display: [:each | each entries collect: #reference ];
			when: #isDirectory;
			icon: [:each | each isDirectory 
					ifTrue: [GLMUIThemeExtraIcons glamorousOpen ] 
					ifFalse: [GLMUIThemeExtraIcons glamorousBrowse]];
			format: #basename
		].
	^ browser 