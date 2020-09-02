# Quantum Random Number Generator

This is a quantum random generator which produces truly random numbers when run on quantum hardware.

Classical random number generators are only pesudorandom, meaning they rely upon a seed value to produce a deterministic sequence of bits. They satisfy specific statistical properties, but rely upon mathematical operations of the seed (normally the CPU time).

This quantum random number generator is truly random, as it creates bits based on the collapse of a qubit in superposition.
As it uses a Hadamard gate, it has a 50-50 chance of being either 0 or 1 with no way to determine how it will collapse:
|0⟩ = |1⟩ = 1/√2

The program interpolates the quantum code created in Q# with classical Python 3 in order to allow for user input.
It accepts a range from the user for the random number to be generated (i.e. a minimum and maximum boundary), simulates the program on quantum hardware, and returns the result. 
