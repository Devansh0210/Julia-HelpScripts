function RArray(v::Vector)
	N = length(v)
	M = zeros(Number, N, Int(ceil(N/2)))
	xlim = Int(ceil(N/2))
	M[1,1:end] = [v[i] for i in 1:2:N]
	M[2,1:end-(N%2)] = [v[i] for i in 2:2:N]
	for i in 3:N
		M[i,1:end-1] = [(M[i-1,1]*M[i-2,j+1] - M[i-1,j+1]*M[i-2,j])/M[i-1,1] for j in 						1:xlim-1]
	end
	
	return M
end