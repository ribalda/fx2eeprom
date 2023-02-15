fx2eeprom
=========

Read and Write the EEPROM of an FX2 chip with the help of the Cypress `vend_ax.hex` firmware.

`vend_ax.hex` is property of Cypress.

COMPILE
-------
- Install libusb-1.0-0-dev on your system, e.g. `apt install libusb-1.0-0-dev` for debian.
- Run `make`

PREPARATION
-----------
- Install cycfx2prog, e.g. `apt install cycfx2prog`

USE
---

- Download the fw
```sh
cycfx2prog -id=0x04b4.0x8613 prg:vend_ax.hex run
```

- Read SIZE bytes starting at EEPROM_ADDRESS from USB device with VID:PID
```sh
./fx2eeprom r VID PID [SIZE [EEPROM_ADDRESS]] > eeprom.raw
```

- Write SIZE bytes starting at EEPROM_ADDRESS to USB device with VID:PID
```sh
./fx2eeprom w VID PID [SIZE [EEPROM_ADDRESS]] < eeprom.raw
```

`SIZE` must not be greater than 65536. You can omit the `SIZE` parameter, in which case 65536 is used by default.
In read mode, the tool then outputs 65536 EEPROM bytes to stdout;
in write mode, it stores up to 65536 bytes from stdin (until EOF) on the EEPROM.
Also the `EEPROM_ADDRESS` parameter is optional and defaults to 0.


CyUSB Suite for Linux
---------------------

If you want to work more intensively with the FX2 on your Linux system, the Cypress GUI
[CyUSB Suite for Linux](https://github.com/Ho-Ro/cyusb_linux) offers further possibilities.
