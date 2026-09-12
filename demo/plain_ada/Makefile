# This Makefile is a demo about how to build many proto files taking into
# account their dependencies (i.e. rebuild only affected files after a change).

# Unless you put the `protoc-gen-ada` in your PATH, you should not run `make`
# directly, but instead run `alr build`, which will invoke `make` accordingly.

LD_LIBRARY_PATH := $(realpath ../../.libs):$(LD_LIBRARY_PATH)

PROTO_DIR:=../proto
OUT_DIR:=src
PARENT_PKG:=my_format-

PROTO_FILES:=$(wildcard $(PROTO_DIR)/*.proto)
ADA_FILES:=$(patsubst $(PROTO_DIR)/%.proto,$(OUT_DIR)/$(PARENT_PKG)%.adb,$(PROTO_FILES))
ADA_FILES+=$(patsubst $(PROTO_DIR)/%.proto,$(OUT_DIR)/$(PARENT_PKG)%.ads,$(PROTO_FILES))
DEP_FILES:=$(patsubst $(PROTO_DIR)/%.proto,$(OUT_DIR)/%.d,$(PROTO_FILES))

all: $(ADA_FILES)
.PHONY: all

-include $(DEP_FILES)

$(OUT_DIR)/$(PARENT_PKG)%.adb $(OUT_DIR)/%.ads : $(PROTO_DIR)/%.proto
# Run the compiler to generate for the League runtime.
# LD_LIBRARY_PATH and -plugin=protoc-gen-ada are only needed to be able to
# build the demo without having the compiler installed globally.
# If you install the compiler using `alr install`, the command line would be
# simpler: protoc --ada_out=src --ada_opt=runtime=plain_ada basics.proto
	env LD_LIBRARY_PATH=$(realpath ../../.libs):$(LD_LIBRARY_PATH) \
       protoc --plugin=protoc-gen-ada=../../.objs/compiler/protoc-gen-ada \
	   --proto_path=$(PROTO_DIR) \
	   --ada_out=$(OUT_DIR) \
       --ada_opt=runtime=plain_ada \
	   --dependency_out=$(OUT_DIR)/$*.d $<

clean:
	rm -f $(ADA_FILES) $(DEP_FILES)
.PHONY: clean
