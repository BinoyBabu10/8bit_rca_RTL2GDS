# 8-bit Ripple Carry Adder (RCA)

## 📝 Problem Statement
The goal of this project is to design and implement an **8-bit Ripple Carry Adder (RCA)** using Verilog HDL.  
An RCA is a fundamental digital circuit that performs binary addition. It consists of multiple full adders connected in series, where the carry-out of each stage is fed into the carry-in of the next stage.

**Requirements:**
- Add two 8-bit binary numbers with a carry-in.
- Produce an 8-bit sum and a final carry-out.
- Synthesize using the **Nangate45 OpenCell Library**.
- Analyze area, delay, and logic utilization.

---

## 🎯 Design Approach
1. **Full Adder Module**  
   - Inputs: `a`, `b`, `cin`  
   - Outputs: `sum`, `carry`

2. **Ripple Carry Adder Module**  
   - Chains 8 full adders to form the 8-bit RCA.  
   - Propagates carry from LSB to MSB.  

---

## ⚙️ Implementation
- **HDL:** Verilog  
- **Synthesis Tool:** Yosys  
- **Technology Library:** Nangate45 OpenCell Library  
- **Simulation Tools:** Icarus Verilog & GTKWave  

### 📂 Project Structure
8bit_rca/
├── doc/
│ ├── images/ # Waveforms, screenshots
│ │ └── tb_rca_behav.wcfg
│ └── schematics/ # Generated schematics
│
├── flow/
│ ├── results/ # Synthesis results
│ │ ├── netlist.v
│ │ ├── netlist_stat.txt
│ │ ├── rca_schematic.dot
│ │ └── rca_schematic.png
│ ├── rtl/ # RTL sources
│ │ └── 8bitrca.v
│ └── yosys/ # Yosys synthesis scripts
│ └── synth.ys
│
├── uvm/ # UVM testbench structure
│ ├── agent/
│ ├── design/
│ ├── driver/
│ ├── env/
│ ├── generator/
│ ├── interface/
│ ├── monitor/
│ ├── scoreboard/
│ ├── test/
│ ├── testbench/
│ └── transaction/
│
└── README.md


---

## ⚙️ Tools Used
- **HDL:** Verilog  
- **Verification:** SystemVerilog UVM  
- **Synthesis:** Yosys + Nangate45 OpenCell Library  
- **Simulation:** Icarus Verilog, GTKWave  
- **Schematic Visualization:** Graphviz/Xdot  

---

## 🚀 How to Run

### 1. RTL Simulation
```bash
cd flow/rtl
iverilog -o simv 8bitrca.v ../testbench/tb_8bitrca.v
./simv
gtkwave dump.vcd
cd flow
yosys yosys/synth.ys
