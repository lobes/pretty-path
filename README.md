# Pretty Path

- [Nix](https://srid.ca/haskell-nix) + [Flakes](https://serokell.io/blog/practical-nix-flakes) (via [`github:srid/haskell-flake`](https://github.com/srid/haskell-flake)) + GHC 9.4
- VSCode + [HLS](https://github.com/haskell/haskell-language-server)
- [fourmolu](https://github.com/fourmolu/fourmolu) autoformatting 
- [Relude](https://github.com/kowainik/relude) as Prelude.
  - `.hlint.yaml` is [from relude](https://github.com/kowainik/relude/blob/main/.hlint.yaml)
- Devshell commands are provided via [just](https://just.systems/); run `just` in devshell.

## Tips

- Run `nix flake update` to update all flake inputs.
- Run `just fmt` in nix shell to autoformat the project. This uses [treefmt](https://github.com/numtide/treefmt).
- Run `just docs` to start Hoogle with packages in your cabal file.
