//------------------------------------------------------------------------------
// <auto-generated>                                                             
//     This code was generated by a tool.                                       
//     Changes to this file may cause incorrect behavior and will be lost if    
//     the code is regenerated.                                                 
// </auto-generated>                                                            
//------------------------------------------------------------------------------
namespace QuantumRNG
{
    using System;
    using Microsoft.Quantum.Core;
    using Microsoft.Quantum.Intrinsic;
    using Microsoft.Quantum.Simulation.Core;

    internal class __QsEntryPoint__ : Microsoft.Quantum.EntryPointDriver.IEntryPoint<QVoid, Int64>
    {
        public string Summary => "";
        public System.Collections.Generic.IEnumerable<System.CommandLine.Option> Options => new System.CommandLine.Option[] { };
        public string DefaultSimulatorName => "QuantumSimulator";
        public string DefaultExecutionTarget => "Any";
        public EntryPointInfo<QVoid, Int64> Info => global::QuantumRNG.randNum.Info;
        public IOperationFactory CreateDefaultCustomSimulator() => throw new InvalidOperationException();
        public QVoid CreateArgument(System.CommandLine.Parsing.ParseResult parseResult) => QVoid.Instance;
        private static async System.Threading.Tasks.Task<int> Main(string[] args) => await new Microsoft.Quantum.EntryPointDriver.Driver<global::QuantumRNG.randNum, QVoid, Int64>(new Microsoft.Quantum.EntryPointDriver.DriverSettings(simulatorOptionAliases: System.Collections.Immutable.ImmutableList.Create("--simulator", "-s"), quantumSimulatorName: "QuantumSimulator", toffoliSimulatorName: "ToffoliSimulator", resourcesEstimatorName: "ResourcesEstimator"), new __QsEntryPoint__()).Run(args);
    }
}