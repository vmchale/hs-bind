let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/dhall/atspkg-prelude.dhall

in prelude //
  { libName = "hs-bind"
  , dir = ".atspkg/contrib"
  , url = "https://github.com/vmchale/hs-bind/archive/0.4.1.tar.gz"
  , libVersion = [0,4,1]
  }
