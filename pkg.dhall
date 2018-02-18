let dep = https://raw.githubusercontent.com/vmchale/atspkg/master/dhall/default-pkg.dhall

in dep //
  { libName = "hs-bind"
  , dir = ".atspkg/contrib"
  , url = "https://github.com/vmchale/hs-bind/archive/0.4.1.tar.gz"
  , libVersion = [0,4,1]
  }
