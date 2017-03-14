statistics
correlationOf: aBlockOrSymbol1 and: aBlockOrSymbol2
	"This method calculates the Pearson correlation for two metrics between all the values obtained from the history versions"
	|setValue1 setValue2 result sum_sq_x sum_sq_y sum_coproduct mean_x mean_y sweep delta_x delta_y pop_sd_x pop_sd_y cov_x_y|
	setValue1:=OrderedCollection new.
	setValue2:=OrderedCollection new.
	
	self versions do:[:currentHistoryVersion|
		setValue1 add: (aBlockOrSymbol1 value: currentHistoryVersion).
		setValue2 add: (aBlockOrSymbol2 value: currentHistoryVersion).
		].

	(setValue1 size ~= setValue2 size) ifTrue:[self error: 'The arrays lenghts are different'].
	(setValue1 asSet size= 1 or: setValue2 asSet size= 1 ) ifTrue:[ self error: 'An array containts only one value'].
	result:=0.
	sum_sq_x:=0.
	sum_sq_y:=0.
	sum_coproduct:=0.
	mean_x:=setValue1 at: 1.
	mean_y:=setValue2 at: 1.
	3 to: (setValue1 size +1) do:[:i|
		sweep:=(i-2)/(i-1).
		delta_x:=(setValue1 at: (i-1))-mean_x.
		delta_y:=(setValue2 at: (i-1))-mean_y.
		sum_sq_x := (sum_sq_x + ((delta_x * delta_x)*sweep )).
            sum_sq_y :=  (sum_sq_y +(delta_y * delta_y * sweep)).
            sum_coproduct := (sum_coproduct +(delta_x * delta_y * sweep)).
            mean_x := (mean_x +(delta_x / (i-1))).
            mean_y := (mean_y +(delta_y / (i-1))).
		].
	pop_sd_x:=(sum_sq_x/(setValue1 size)) sqrt.
	pop_sd_y:=(sum_sq_y/(setValue1 size)) sqrt.
	cov_x_y := (sum_coproduct / (setValue1 size)).
	result := (cov_x_y / (pop_sd_x*pop_sd_y)).
	^result.