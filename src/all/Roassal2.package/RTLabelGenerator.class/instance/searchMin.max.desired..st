public
searchMin: dmin max: dmax desired: desiredNumberOfTicks
	| best sm dm cm delta bestScore k |
	best := RTGrapherLabel new.
	bestScore := -2.
	desiredNumberOfTicks <= 0 ifTrue: [ self error: 'The minimun value of desiredNumberOfTicks is 1' ].
	
	"In case of a particular situation"
	(dmin = 0 and: [ dmax = 0 ]) ifTrue: [ 
		best
			min: 0;
			max: 1;
			step: 1;
			score: bestScore.
		^ best ].
	
	[ :break |
		[ true ] whileTrue: [ 
			n := nice next.
			sm := self simplicityMax.
			((self w: sm c: 1 d: 1 l: 1) < bestScore)
				ifTrue: [ break value ].
			k := 2.
			[ :break2 |
				[ true ] whileTrue: [ | z |
					dm := [ self densityMax: k m: desiredNumberOfTicks ] on: ZeroDivide do: [ :ex | self error: 'Please increase the value of desiredNumberOfTicks/labels' ].
					((self w: sm c: 1 d: dm l: 1) < bestScore) 
						ifTrue: [ break2 value ].
					delta := (dmax - dmin)/(k+1)/ n j/ (nice qat: n i).
					z := (nice logB: delta) ceiling.
					[ :break3|
						[ true ] whileTrue: [ 
							[ :continue | | minStart maxStart step |
								step := n j * (nice qat: n i) * (nice base raisedTo: z).
								cm := self coverageMin: dmin max: dmax span: step * (k-1).
								((self w: sm c: cm d: dm l: 1) < bestScore) 
									ifTrue: [ break3 value ].
								minStart := ((dmax / step) floor - (k-1)) * n j.
								maxStart := (dmin / step) ceiling * n j.
								(minStart > maxStart) ifTrue: [ 
									z := z +1.
									continue value. ].
						
								(minStart to: maxStart) do: [ :start |
									| lmin lmax lstep c s d l score |
									lmin := start * step / n j. 
									lmax := lmin + (step * (k -1)).
									lstep := step.
									c := self coverageMin: dmin max: dmax lmin: lmin lmax: lmax.
									s := self simplicity: lmin max: lmax step: lstep.
									d := self density: k m: desiredNumberOfTicks dmin: dmin dmax: dmax lmin: lmin lmax: lmax.
									l := self legibility: lmin max: lmax step: lstep.
									score := self w: s c: c d: d l: l.
							
									((score > bestScore) and: 
									[ loose not or: [ (lmin <= dmin) and: 
														  [ lmax >= dmax ] ] ]) ifTrue: [
										best
											min: lmin;
											max: lmax;
											step: lstep;
											score: score.
											bestScore := score.
									 ].
								].
								z := z +1.
							] valueWithExit.
						].
					] valueWithExit. 
					k := k +1.
				].
			] valueWithExit.
		 ]
	] valueWithExit.
	
	nice reset.
	
	^ best.