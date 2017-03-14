accessing
mul
	^ 'mult n m = if (n == 0) then 0 else (m + (mult (n - 1) m))'