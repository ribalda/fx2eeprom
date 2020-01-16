CFLAGS= -Wall
LDLIBS = -lusb-1.0

all: fx2eeprom

clean:
	${RM} fx2eeprom
