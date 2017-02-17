comparing
cosBetween: p1 and: p2


^ (( GRay origin: self center direction: p1 ) * ( GRay origin: self center direction: p2 )) 
/
( ( GRay origin: self center direction: p1 )length * (( GRay origin: self center direction: p2 ) length ) )
