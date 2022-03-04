TARGET = nrdc

CODEFILES = nrdc.c

default:
    gcc -03 -o $(TARGET) $(CODEFILES)
    
.PHONY: clean

clean:
    rm -f $(TARGET) *.o