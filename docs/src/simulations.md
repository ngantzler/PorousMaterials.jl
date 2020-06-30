# Simulations

`PorousMaterials.jl` provides a software interface for molecular simulations.
Currently supported:
- Grand Canonical Monte Carlo (GCMC)
- Henry's Law
Other simulations are in development.

## GCMC

### set up
read in a host crystal and a guest molecule:
```julia
xtal = Crystal("IRMOF-1.cif")
mol = Molecule("CH4")
```
choose the force field and define temperature and pressure:
```julia
ljff = LJForceField("UFF")
temp = 298.0 # K
pres = [10^n for n ∈ -1:0.2:2]
```

### run simulation
```julia
result = adsorption_isotherm(xtal, mol, temp, pres, ljff)
```

# details

```@docs
    adsorption_isotherm
```
