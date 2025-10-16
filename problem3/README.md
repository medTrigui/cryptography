# Problem 3: Implementing MPC using SFDL

## Secure Scalar Product Computation using Fairplay

This folder contains the complete implementation of a two-party secure computation protocol using Fairplay and SFDL to compute the scalar product of two private Boolean vectors.

---

## 📖 Documentation

**Main Report:** `hw3-3-report.md`
- Complete project report with protocol design, implementation details, inputs, and results
- Start here for full understanding of the project

**Quick Start:** `hw3-3-README.txt`
- Quick reference guide
- File organization and reading order
- Summary of results

**Execution Screenshots:** `hw3-3-screenshots.txt`
- Step-by-step visual documentation of protocol execution
- 11 detailed screenshots showing compilation, execution, and results

---

## 📁 File Organization

### Submission Files (Your Work)
- `hw3-3-report.md` - Main comprehensive report
- `hw3-3-screenshots.txt` - Execution documentation
- `hw3-3-source.txt` - SFDL source code
- `hw3-3-circuit.txt` - Compiled SHDL circuit (84 gates)
- `hw3-3-format.txt` - Wire mappings
- `hw3-3-inputs.txt` - Input matrices/vectors
- `hw3-3-results.txt` - Actual execution results
- `hw3-3-README.txt` - Submission guide

### Fairplay Framework
- `jars/` - Fairplay runtime libraries (SFE.jar, log4j)
- `run/` - Execution environment with scripts
  - `progs/` - Compiled program files
  - `run_bob.bat`, `run_alice.bat` - Execution scripts

---

## 🎯 Results Summary

**Input:**
- Alice's Vector A: `[1, 1, 1, 1, 0, 1, 1, 1, 1, 1]`
- Bob's Vector B: `[0, 1, 0, 0, 1, 1, 0, 1, 1, 1]`

**Output:**
- Scalar Product: `A · B = 5` ✅
- Both parties received correct result
- Privacy maintained (no inputs revealed)

---

## 🚀 Quick Execution

To run the protocol:

1. **Compile:** `.\run_bob.bat -c progs\hw3-3-ScalarProduct.txt`
2. **Run Bob:** `.\run_bob.bat -r progs\hw3-3-ScalarProduct.txt randomseed123 4`
3. **Run Alice:** `.\run_alice.bat -r progs\hw3-3-ScalarProduct.txt randomseed456 localhost`

See `hw3-3-README.txt` for detailed instructions.

---

## 📊 Technical Details

- **Protocol:** Yao's Garbled Circuits (via Fairplay)
- **Circuit Size:** 84 gates
- **Input Wires:** 20 (10 per party)
- **Security:** Semi-honest secure
- **Result:** Successfully executed and verified ✅

---

**For complete details, see `hw3-3-report.md`**

