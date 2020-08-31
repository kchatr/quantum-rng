import qsharp
from QuantumRNG import generateRandBit, sampleRandNumInRange, randNum

print("This is a program which uses quantum superposition in order to generate truly random numbers.\n")
print("Classical random number generators are only pesudorandom, meaning they rely upon a seed value to produce a deterministic sequence of bits.")
print("This quantum random generator relies on using the Hadamard quantum gate for imposing an equal superposition upon a qubit: |0⟩ = |1⟩ = 1/√2 \n")

max = int(input("Enter the largest number the random number generated should be: \n"))

rand_num = randNum.simulate(max_num = max)

print(f"The random number generated is: {rand_num}")

