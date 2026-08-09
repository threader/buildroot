################################################################################
#
# llvm-project
#
################################################################################

LLVM_PROJECT_VERSION_MAJOR = 22
LLVM_PROJECT_VERSION = $(LLVM_PROJECT_VERSION_MAJOR).1.8
LLVM_PROJECT_SITE = https://github.com/llvm/llvm-project/releases/download/llvmorg-$(LLVM_PROJECT_VERSION)
LLVM_PROJECT_SOURCE = llvm-project-$(LLVM_VERSION).src.tar.xz

HOST_LLVM_CONF_OPTS += -D_LIBCPP_HARDENING_MODE=_LIBCPP_HARDENING_MODE_EXTENSIVE -DLLVM_HOST_TRIPLE=native
LLVM_CONF_OPTS += -D_LIBCPP_HARDENING_MODE=_LIBCPP_HARDENING_MODE_EXTENSIVE -DLLVM_HOST_TRIPLE=native

include $(sort $(wildcard package/llvm-project/*/*.mk))
