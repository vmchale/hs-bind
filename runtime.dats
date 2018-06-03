%{^
#include <HsFFI.h>
#ifdef __GLASGOW_HASKELL__
#ifdef __GLASGOW_HASKELL__ <= 802
#include STUB_H
extern void STG_INIT(void);
#endif
#endif
#include <stdio.h>

void hs_init_c(int argc, char *argv[]) {
  hs_init(&argc, &argv);
#ifdef __GLASGOW_HASKELL__
#if __GLASGOW_HASKELL__ <= 802
  hs_add_root(STG_INIT);
#endif
#endif
}

void hs_exit_c() { hs_exit(); }
%}

extern
fun hs_init {n:int}(argc : int(n), argv : !argv(n)) : void =
  "mac#hs_init_c"

extern
fun hs_exit() : void =
  "mac#hs_exit_c"
