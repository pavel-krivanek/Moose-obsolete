hooks
initializeElement: aView

	| mb |
	mb := RTMenuBuilder new.
	mb view: aView.
	mb menu: 'Find' callback: [ 
        GTSpotterMorph new
                        extent: 400@500;
                        spotterModel: (GTSpotter on: aView);
                        openCenteredInWorld ].
	mb build