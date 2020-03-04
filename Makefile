.PHONY: ci check

PATSOPT="$(PATSHOME)"/bin/patsopt

ci: .github/workflows/ats.yml

.github/workflows:
	mkdir -p $@

.github/workflows/ats.yml: ci.dhall .github/workflows
	dhall-to-yaml --file $< --output $@

check:
	$(PATSOPT) -tc -dd runtime.dats
