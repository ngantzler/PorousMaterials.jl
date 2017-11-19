module PorousMaterials

# this is the directory where crystal structures, forcefields, and molecules data is stored
global PATH_TO_DATA = pwd() * "/data/"

include("Crystal.jl")
include("Forcefield.jl")
include("Molecules.jl")
include("Energetics.jl")
 
export Framework, read_crystal_structure_file, replicate_to_xyz, # Crystal.jl
       LennardJonesForceField, read_forcefield_file, replication_factors, check_forcefield_coverage, # Forcefield.jl
       Molecule, constructmolecule, readcharge, # Molecules.jl
       lennard_jones, vdw_energy # Energetics.jl

end
