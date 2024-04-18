# VERSIÓN A UTILIZAR POR MORALES CALVO ÁNGEL OMAR
# USUARIO: burgie80

# Define el archivo fuente en ensamblador
SRC = hanoi2.s

# Define el nombre del archivo de salida
OUT = hanoi2

# Define el ensamblador y las banderas
AS = as
ASFLAGS = -g

# Define el enlazador y las banders
LD = ld
LDFLAGS = 

# Define el GCC o G++ según corresponda
GCC = gcc
GCCFLAGS = -g

# Corrida de make
all: $(OUT)

$(OUT): $(SRC)
	$(AS) $(ASFLAGS) $(SRC) -o $(OUT).o
	$(GCC) $(LDFLAGS) $(OUT).o -o $(OUT)

# Borra temporales y ejecutable
clean:
	rm -f $(OUT) $(OUT).o

# Corrida
run: $(OUT)
	./$(OUT)

# Entrar al debugger
gef: $(OUT)
	gdb $(OUT)
