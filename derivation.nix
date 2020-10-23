{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "mqtt2csv-vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/mqtt2csv-vicpack-payload-decoder.git";
    rev = "de2c935f3996937464974ee3136b43e6364d9a51";
    sha256 = "1bnii93chb8cyyk5nlrvf7vni79sz6pxp6l170s6w8kh5v5nk13q";
  };
  buildInputs = with pkgs;
  [ ats2
    jansson
    which
  ];
  postBuild = ''
    mkdir -p $out
    cp src/mqtt2csv-vicpack-payload-decoder $out
  '';
  dontInstall = true;

}
