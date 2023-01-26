fx2eeprom
=========

Read and Write the EEPROM of an FX2 chip with the help of the Cypress `vend_ax.hex` firmware.


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


- Read example: read SIZE bytes (max. 4096) from USB device with VID:PID
```sh
./fx2eeprom r VID PID SIZE > eeprom.raw
```

- Write example: write SIZE bytes (max. 4096) to USB device with VID:PID
```sh
./fx2eeprom w VID PID SIZE < eeprom.raw
```

`SIZE` must not be greater than 4096. You can omit the `SIZE` parameter, in which case 4096 is used by default.
In read mode, the tool then outputs 4096 bytes to stdout; in write mode, it saves up to 4096 bytes from stdin (until EOF).


`vend_ax.hex` is property of Cypress
