import qsharp
from QuantumRNG import generateRandBit, sampleRandNumInRange, randNum

print("This is a program which uses quantum superposition in order to generate truly random numbers.\n")
print("Classical random number generators are only pesudorandom, meaning they rely upon a seed value to produce a deterministic sequence of bits.")
print("This quantum random generator relies on using the Hadamard quantum gate for imposing an equal superposition upon a qubit: |0⟩ = |1⟩ = 1/√2 \n")

min = int(input("Enter the smallest possible number the random number generated should be: "))
max = int(input("Enter the largest possible number the random number generated should be: "))

assert max > min, "The minimum value must be smaller than the maximum."

rand_num = randNum.simulate(min_num = min, max_num = max)

print(f"The random number generated is: {rand_num}")

