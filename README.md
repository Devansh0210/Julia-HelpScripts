### 1. Resistor algebra [reg_alg.jl](https://github.com/Devansh0210/Julia-HelpScripts)

define all the resistors using `@res` macro:
```julia
@res begin
	r1 = 12
	r2 = 4
end
```

To find parallel or series resistance :
```julia
Rp = r1//r2 # 3 Ω 
Rs = r1+r2 # 16 Ω
