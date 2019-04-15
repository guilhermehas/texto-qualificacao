{ pkgs ? import <nixpkgs> {} }: with pkgs;

stdenv.mkDerivation {
  name = "qualificacao-mestrado";
  src = ./.;
  # FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ inconsolata-lgc libertine libertinus ]; };
  buildInputs = [
    (texlive.combine {
        inherit (texlive)
        xcolor
        geometry
        hyperref
        fontspec
        textpos
        isodate
        titlesec
        latexmk
        blindtext
        substr

        url
        amsmath
        parskip
        fancyhdr
        vmargin

        changepage

        polytable
        lazylist
        environ
        trimspaces
        ucs
        catchfilebetweentags

        xifthen
        ifnextok
        currfile
        noindentafter
        ifmtarg
        scheme-medium
        listings
        minted
        microtype
        babel
        todonotes
        chngcntr
        ifplatform
        xstring
        minifp
        titlecaps
        enumitem
        l3packages
        ;
      })
    haskellPackages.Agda
  ];
}
