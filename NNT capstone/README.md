# Make the Computer Draw a Box

**Akshay Kumar · 2501010033 · K = 33**  
Nand to Tetris I (ETCCNT301), K.R. Mangalam University

The box begins at zero-based row 33. It spans rows 33–52 and columns 0–31. Holding a key makes the box black. Releasing the key clears it.

## 1. Assemble in VS Code on Windows

1. Extract the ZIP and open the `capstone` folder in VS Code using **File → Open Folder**.
2. Open **Terminal → New Terminal**. With Python 3 installed, run:

   ```powershell
   py assembler.py Box.asm
   ```

   Use `python assembler.py Box.asm` if your Python installation uses `python`.

This rebuilds `Box.hack` and writes `symbols.txt` alongside it. The symbol export is the personalized assembler requirement because `33 mod 3 = 0`.

## 2. Run the box demo

1. Open `CPUEmulator.bat` from the Nand2Tetris desktop tools. The Java runtime is needed for the desktop tools.
2. Select **File → Load Program** and choose the generated `Box.hack`.
3. Select **No animation**, then click **Run** (double arrow).
4. Activate the emulator keyboard using its keyboard icon. Hold a normal letter key to see the box, then release it to see the box disappear.

## 3. Run the HDL tests

1. Copy all files from `hardware_tests` into the extracted `capstone` folder so the test scripts sit beside the three HDL files.
2. Open `HardwareSimulator.bat`. Use **File → Load Script**, choose a test, and run it. The scripts are `CPU.tst`, `Memory.tst`, `ComputerAdd.tst`, `ComputerMax.tst` and `ComputerRect.tst`.
3. For `Memory.tst`, choose the **Screen** view. Activate the on-screen keyboard when prompted. Hold uppercase **K** until the first prompt ends, and uppercase **Y** when the second prompt appears.

The three top-level HDL chips use the simulator’s built-in gates, registers, ALU, PC, RAM16K, Screen, Keyboard and ROM32K.

## Address calculation

Each screen row occupies 32 words. The first address is `16384 + 33 × 32 = 17440`. Each row uses two 16-bit words from the left edge. To try a different start row for the viva, change the `@1056` offset in `Box.asm` to `32 × new row` as a decimal number, then assemble again.

For the assignment, put the source files in the `capstone/` folder of your existing lab repository and upload the report separately to ZOSIMA.

##**output**

![before output](<Screenshot 2026-11-27 104424.png>)

![output](<Screenshot 2026-11-27 103715.png>)

![output](<Screenshot 2026-11-27 103957.png>)

