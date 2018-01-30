#define STUB "hs/Option_stub.h"

#define STDINIT __stginit_Option

%{^
#include <HsFFI.h>
#ifdef __GLASGOW_HASKELL__
#include STUB
extern void STGINIT(void);
#endif
#include <stdio.h>

void hs_init_c(int argc, char *argv[]) {
  hs_init(&argc, &argv);
#ifdef __GLASGOW_HASKELL__
  hs_add_root(STG_INIT);
#endif
}

void hs_exit_c() { hs_exit(); }
%}

extern
fun hs_init {n:int} (argc : int(n), argv : !argv(n)) : void =
  "mac#hs_init_c"

extern
fun hs_exit() : void =
  "mac#hs_exit_c"