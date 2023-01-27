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

- Read SIZE bytes (max. 4096) from USB device with VID:PID
```sh
./fx2eeprom r VID PID SIZE > eeprom.raw
```

- Write SIZE bytes (max. 4096) to USB device with VID:PID
```sh
./fx2eeprom w VID PID SIZE < eeprom.raw
```

`SIZE` must not be greater than 4096. You can omit the `SIZE` parameter, in which case 4096 is used by default.
In read mode, the tool then outputs 4096 EEPROM bytes to stdout;
in write mode, it stores up to 4096 bytes from stdin (until EOF) on the EEPROM.

CyUSB Suite for Linux
---------------------

If you want to work more intensively with the FX2 on your Linux system, the Cypress GUI
[CyUSB Suite for Linux](https://github.com/Ho-Ro/cyusb_linux) offers further possibilities.
