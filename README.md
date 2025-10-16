# Assignment 3: Secure Multi-Party Computation

Mohamed Trigui  
Data Privacy Course  
October 2025

---

## Problem 3: Implementing MPC using SFDL

**Task:** Secure two-party computation of scalar product using Fairplay.

**Location:** `problem3/`

**Main Documentation:** `problem3/hw3-3-report.md`

Alice and Bob each hold private 10-element Boolean vectors. The protocol computes their scalar product without revealing inputs to either party.

**Key Files:**
- `hw3-3-report.md` - Complete implementation report
- `hw3-3-screenshots.txt` - Execution documentation (11 screenshots)
- `hw3-3-source.txt` - SFDL program source code
- `hw3-3-circuit.txt` - Compiled circuit (84 gates)
- `hw3-3-results.txt` - Actual execution results

**Results:**
- Input A: [1,1,1,1,0,1,1,1,1,1]
- Input B: [0,1,0,0,1,1,0,1,1,1]
- Output: A · B = 5 (verified correct)
- Protocol: Yao's Garbled Circuits via Fairplay
- Status: Successfully executed

---

## Problem 4: Secure Multi-Party Computation Protocol Design

**Task:** Design protocol for 4 parties to find maximum of summed vectors without revealing the sum.

**Location:** `problem4/`

**Main Documentation:** `problem4/hw3-4-report.md`

Four parties (Alice, Bob, Chris, David) each hold private 10-element integer vectors. The protocol computes max(Va + Vb + Vc + Vd) without revealing the sum vector V.

**Key Files:**
- `hw3-4-report.md` - Complete protocol design with pseudocode
- `hw3-4-README.txt` - Quick reference guide

**Protocol Design:**
1. Phase 1: Paillier key generation (Alice)
2. Phase 2: Homomorphic summation (encrypted)
3. Phase 3: Random permutation (David)
4. Phase 4: Collaborative decryption
5. Phase 5: Secure maximum via garbled circuits

**Key Innovation:** Random permutation layer between homomorphic encryption and garbled circuits hides the sum vector structure while allowing maximum computation.

**Status:** Protocol design complete (30 points). Implementation not included (0/20 bonus points).

---

## Repository Structure

```
assignment 3/
├── problem3/          Problem 3: SFDL Implementation
│   ├── hw3-3-*.txt    Submission files (8 files)
│   ├── hw3-3-report.md Main report
│   ├── jars/          Fairplay runtime
│   └── run/           Execution environment
│
└── problem4/          Problem 4: Protocol Design
    ├── hw3-4-report.md Protocol design
    └── hw3-4-README.txt Quick reference
```

---

## Quick Start

**Problem 3 - Run the Protocol:**
```
cd problem3/run
.\run_bob.bat -c progs\hw3-3-ScalarProduct.txt
.\run_bob.bat -r progs\hw3-3-ScalarProduct.txt randomseed123 4
.\run_alice.bat -r progs\hw3-3-ScalarProduct.txt randomseed456 localhost
```

**Problem 4 - Read the Design:**
```
See problem4/hw3-4-report.md for complete protocol design
```

---
