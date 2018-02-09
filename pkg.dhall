let dep = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default-pkg.dhall

in dep //
  { libName = "hs-bind-0.4.1"
  , dir = ".atspkg/contrib"
  , url = "https://github.com/vmchale/hs-bind/archive/0.4.1.tar.gz"
  , libVersion = [0,4,1]
  }
