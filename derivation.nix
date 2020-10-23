{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "mqtt2csv-vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/mqtt2csv-vicpack-payload-decoder.git";
    rev = "1d2a960113b70517215c7fafa0e4033adc4ab481";
    sha256 = "00z9a3cqfia343m2xv1y6vzfc20656mgvv54s76kgddyf2clalrf";
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
