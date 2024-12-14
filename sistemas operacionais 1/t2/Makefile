# Compilador e padrão de C++
GXX = g++ -std=c++17

# Arquivos e diretórios
SRCS = shell.cc fileOps.cc fs.cc disk.cc
OBJS = shell.o fileOps.o fs.o disk.o
INTERFACE_DEPENDENCIES_OBJS = fs.o disk.o fileOps.o
INTERFACE_DIR = interface
INTERFACE_SRCS = $(wildcard $(INTERFACE_DIR)/*.cpp)
INTERFACE_OBJS = $(patsubst %.cpp,%.o,$(INTERFACE_SRCS)) # Converter .cpp para .o
TEST_SRC = sfml-test.cpp
TEST_OBJ = sfml-test.o

# Alvo principal
simplefs: $(OBJS)
	$(GXX) $(OBJS) -o simplefs

# Compilação de objetos
shell.o: shell.cc
	$(GXX) -Wall -c $< -o $@ -g

fileOps.o: fileOps.cc fileOps.h
	$(GXX) -Wall -c $< -o $@ -g

fs.o: fs.cc fs.h
	$(GXX) -Wall -c $< -o $@ -g

disk.o: disk.cc disk.h
	$(GXX) -Wall -c $< -o $@ -g

# Interface - compilar apenas os arquivos da interface, com dependências externas
app: $(INTERFACE_DEPENDENCIES_OBJS) $(INTERFACE_OBJS)
	$(GXX) $(INTERFACE_DEPENDENCIES_OBJS) $(INTERFACE_OBJS) -o app -lsfml-graphics -lsfml-window -lsfml-system

# Compilação dos objetos na subpasta interface
$(INTERFACE_DIR)/%.o: $(INTERFACE_DIR)/%.cpp
	$(GXX) -Wall -c $< -o $@ -g

# Teste - compilar o arquivo de teste
test: $(TEST_OBJ)
	$(GXX) $(TEST_OBJ) -o sfml-test -lsfml-graphics -lsfml-window -lsfml-system

# Compilação do objeto de teste
$(TEST_OBJ): $(TEST_SRC)
	$(GXX) -Wall -c $< -o $@ -g

# Limpeza
clean:
	rm -f simplefs app sfml-test $(OBJS) $(INTERFACE_OBJS) $(TEST_OBJ)