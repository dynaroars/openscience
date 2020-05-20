# GenTree

This repository contains the source code and experiment data for the paper *GenTree: Using Decision Trees to Learn Interactions for Configurable Software*.

## Repository Structure
+ benchmarks: testsuites and configuration files for all benchmarks presented in the paper
+ exp-data: raw benchmark resutls
+ gentree-src: the GenTree source code (written in C++).

## Building GenTree
GenTree uses the CMake build system and requires the following external libraries:
- Boost 1.72 (https://www.boost.org/)
- fmt (https://github.com/fmtlib/fmt)
- GLog (https://github.com/google/glog)
- RocksDB (https://github.com/facebook/rocksdb)
- Z3 (https://github.com/Z3Prover/z3)
- Zstd (https://github.com/facebook/zstd)

To build GenTree, runs:
```shell script
mkdir build && cd build
cmake ..
make
```

## Experiment data
- `exp-data/{ls, cat, ...}`: GenTree's outputs (11 runs for each program), and optionally a `full.txt` file containing the results generated using all configuration space.
- `exp-data/Analyze/{stat, mcc, cmin, stat_full}`: aggregated experiment data that is used to fill in tables in the paper
  + `stat`: Table 3. GenTree’s results for the benchmark programs shown 
  + `mcc`: Table 4. Comparing GenTree to exhaustive runs
  + `cmin`: Table 6. Minimal Configurations
  + `stat_full`: Table 7. Comparing GenTree to iGen.
- `exp-data/Analyze_rand`: Table 5. Comparing random search to exhaustive runs
- `exp-data/{Analyze_progress, Analyze_progress_rand}`: Fig. 10. Progress of GenTree on generating interactions for a subset of benchmark programs.