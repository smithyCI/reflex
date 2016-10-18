{ mkDerivation, base, bifunctors, containers, deepseq
, dependent-map, dependent-sum, exception-transformers
, haskell-src-exts, haskell-src-meta, hlint, lens, MemoTrie
, monad-control, mtl, primitive, ref-tf, semigroupoids
, semigroups, split, stdenv, stm, syb, template-haskell
, these, transformers, transformers-compat, prim-uniq
, ghc_reflex ? null
}:
mkDerivation {
  pname = "reflex";
  version = "0.5.0";
  src = builtins.filterSource (path: type: baseNameOf path != ".git") ./.;
  libraryHaskellDepends = [
    base bifunctors containers dependent-map dependent-sum
    exception-transformers haskell-src-exts haskell-src-meta lens
    MemoTrie monad-control mtl primitive ref-tf semigroupoids
    semigroups stm syb template-haskell these transformers
    transformers-compat prim-uniq
  ];
  testHaskellDepends = [
    base bifunctors containers deepseq dependent-map dependent-sum
    hlint mtl ref-tf split transformers
  ];
  buildDepends = [
    ghc_reflex
  ];
  homepage = "https://github.com/reflex-frp/reflex";
  description = "Higher-order Functional Reactive Programming";
  license = stdenv.lib.licenses.bsd3;
}
