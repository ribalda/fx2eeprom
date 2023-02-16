TARGET = fx2eeprom
CFLAGS = -Wall
LDLIBS = -lusb-1.0

.PHONY: all
all: $(TARGET)

fx2eeprom: fx2eeprom.c vend_ax.c vend_ax.h Makefile
	$(CC) $(CFLAGS) $< vend_ax.c $(LDLIBS) -o $@

.PHONY: clean
clean:
	$(RM) fx2eeprom
