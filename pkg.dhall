let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/ats-pkg/dhall/atspkg-prelude.dhall

in λ(x : List Integer) → 
  prelude.makePkg
    { x = x
    , name = "either"
    , githubUsername = "vmchale"
    }
