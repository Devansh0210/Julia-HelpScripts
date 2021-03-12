### 1. Resistor algebra

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
