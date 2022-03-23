# SkyWater_Projects
This is a repo of small skywater130 circuits, and gate designs I have created myself.

Table of Contents:  
   - Inverter  
      - Inv.mag  
      - INV.spice  
   - Oscillator  
      - OSC.cmd  
      - OSC_extracted.sp  
      - OSC_ideal.sp  
      - OSC.mag  
      - OSC.sim  
      - OSC.spc  
      - OSC.spice  
      - sky130A_setup.tcl  
   - SRAM  
      - array.mag  
      - array.spc  
      - array.spice  
      - array.tcl  
      - cell_1rw.mag  
      - cell_1rw.sp  
      - cell_1rw.spice  
      - cell_1rw.tcl  
      - ntap_1rw.mag  
      - ptap_1rw.mag  
      - tran.sp  
      - sky130A_setup.tcl  

Descriptions:  
   - Inverter:  
       This is a project where I designed a basic inverter using the skywater130 technology in magic.
       The .mag file is the layout, and the .spice file is an extracted spice file from the layout.
       This can be used to test the layout against standard cells using ngspice.

   - Oscillator:  
       The project idea was to create a 7 stage oscillator using inverters, one nand gate, and a mux.
       The oscillator should have 2 inputs (Enable and Select). The enable 'turns on' the circuit allowing it oscillate. While the select changes the frequency.
       The .spc files are used to test my layouts design. There is the extracted and an ideal spice file. These are to be compared against each other.
       There is also an IRSIM file (OSC.sim). Using the OSC.cmd file we can simulate the Oscillate functioning as intended.

   - SRAM:  
       This project was to first design a single 6T SRAM cell. The layout for this is in cell_1rw.mag.
       I then create extracted spice files from my layout and .sp files to be tested against using ngspice. There is also a tran.sp file which is a transient simulation showing my cell working as intended.
       After that I create ntap and ptap cells that can be put im between every 6-8 cells. This will make it easier to keep an array of these bitcells small.
       Lastly I put all 3 of them together to create a 3x3 SRAM array. I also include spice files to test it in ngspice.
