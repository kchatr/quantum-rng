namespace QuantumRNG {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    
    operation generateRandBit() : Result {
        // Initalizes a Qubit and assigns it to the variable q
        using(q = Qubit()) {

            // Puts qubit through a Hadamard(H) Gate with equal probability of being 0 and 1 (50%)
            H(q);

            return MResetZ(q);
        }
    }

    operation sampleRandNumInRange(max : Int) : Int {
        mutable output = 0;

        // Apply the generateRandBit() function until the integer output is less than the max specified in the parameters 
        repeat {
            mutable bits = new Result[0];

            // BitSizeI computes the length of bits required to represent max in binary (any other bits would result in a number greater than max)
            for(idxBit in 1..BitSizeI(max)) {
                // Add the bit generated to bits. The set keyword allows as to update a mutable variable.
                set bits += [generateRandBit()];
            }

            // Set output to the integer conversion of the bit-string array.
            set output = ResultArrayAsInt(bits);
        } until(output <= max);

        return output;
    }

    @EntryPoint()
    operation randNum(max_num : Int) : Int {
        let max = max_num;
        Message($"Generating a random number between 0 and {max}:");
        return sampleRandNumInRange(max);
    }

}
