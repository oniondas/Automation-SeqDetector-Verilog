# Verilog Automation Sequence Detector

This repository contains a Jupyter Notebook for **automatically generating Verilog code and testbenches** for sequence detectors using Finite State Machines (FSMs).  
You can specify any binary sequence, and the notebook will generate the Verilog module and a testbench for simulation.

---

## Features

- **Automatic Verilog FSM generation** for any input sequence
- **Testbench generation** with customizable input streams
- **Simulation instructions** for Icarus Verilog and GTKWave
- Example usage and waveform visualization

---

# FSM Sequence Detector Algorithm

* **States:**

  * $S_0, S_1, …, S_n$
  * $S_0$: no bits matched
  * $S_i$: first *i* bits matched
  * $S_n$: full sequence matched (final state)

---

## Transition Rules

* From $S_i$ (where $i < n$):

  * If input matches expected bit $q_{i+1}$ → go to $S_{i+1}$.
  * Else → fallback to the state representing the **longest prefix** of the sequence that matches the current suffix.

* From $S_n$:

  * Set **detected = 1**.
  * Transition based on **overlap handling** (prefix–suffix match).

* Default → go to $S_0$.

---

## Output Rule

* $detected = 1$ if and only if the current state = $S_n$.
* Otherwise, $detected = 0$.

---

## Example
<img width="1918" height="1079" alt="image" src="https://github.com/user-attachments/assets/78f72d24-9ab0-4ec5-8d9c-b169aa1f3495" />


## Usage

1. **Clone the repository:**
   ```sh
   git clone https://github.com/<your-username>/Verilog-Automation-Seq-Detector.git
   cd Verilog-Automation-Seq-Detector
   ```

2. **Open the notebook**  
   Open `Sequence_detector.ipynb` in Jupyter Notebook or VS Code.

3. **Generate Verilog and Testbench**  
   - Set your desired sequence in the notebook.
   - Run the notebook cells to generate the Verilog and testbench files.

4. **Simulate and View Waveforms**
   - Run the following commands in a notebook cell or terminal:
     ```sh
     iverilog -o sim seq<sequence>_detector.v seq<sequence>_detector_tb.v
     vvp sim
     gtkwave wave.vcd
     ```
   - Replace `<sequence>` with your chosen sequence (e.g., `1011`).

---

## Requirements

- [Python 3.x](https://www.python.org/)
- [Jupyter Notebook](https://jupyter.org/)
- [Icarus Verilog](https://bleyer.org/icarus/)
- [GTKWave](http://gtkwave.sourceforge.net/)

---

## License

This project is licensed under the [MIT License](LICENSE).
