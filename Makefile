
BUILD_DIR := "_build"

all: $(BUILD_DIR)/lexer.c $(BUILD_DIR)/parser.c

$(BUILD_DIR)/lexer.c $(BUILD_DIR)/lexer.h: ./src/system_verilog.l $(BUILD_DIR)
	flex --header-file=$(BUILD_DIR)/lexer.h -o $@ $<

$(BUILD_DIR)/parser.c $(BUILD_DIR)/parser.h: ./src/system_verilog.y $(BUILD_DIR)
	bison -d -v -o $@ $<

$(BUILD_DIR):
	@ mkdir -p $(BUILD_DIR)

