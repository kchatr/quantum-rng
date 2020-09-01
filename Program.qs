namespace QuantumRNG {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;

    // Generates a bit which is randomly initalized to either |0⟩ or |1⟩ with a 50% probability of collapsing to either.
    operation generateRandBit() : Result {
        // Initalizes a qubit and assigns it to the variable q
        using(q = Qubit()) {

            // Puts qubit through a Hadamard(H) Gate with equal probability of being 0 and 1 (50%)
            H(q);

            // Measures the qubit on the z-axis [|0⟩ and |1⟩] and resets it.
            return MResetZ(q);
        }
    }

    // Generates random bits using generateRandBit() for the length of the parameter max represented in binary.
    // The bit-string is then converted to an integer.
    operation sampleRandNumInRange(min : Int, max : Int) : Int {
        mutable output = 0;

        // Apply the generateRandBit() function until the integer output is less than the max and greater than the min specified in the parameters 
        repeat {
            mutable bits = new Result[0];

            // BitSizeI computes the length of bits required to represent max in binary (any other bits would result in a number greater than max)
            for(idxBit in 1..BitSizeI(max)) {
                // Add the bit generated to bits. The set keyword allows as to update a mutable variable.
                set bits += [generateRandBit()];
            }

            // Set output to the integer conversion of the bit-string array.
            set output = ResultArrayAsInt(bits);
        } until(output <= max and output >= min);

        return output;
    }

    // The entry point for the program i.e. the main function.
    @EntryPoint()
    operation randNum(min_num : Int, max_num : Int) : Int {
        let max = max_num;
        let min = min_num;
        Message($"\nGenerating a random number between {min} and {max}:");
        return sampleRandNumInRange(min, max);
    }
}
