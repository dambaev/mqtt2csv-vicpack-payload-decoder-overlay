{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "mqtt2csv-vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/mqtt2csv-vicpack-payload-decoder.git";
    rev = "6683ae1bc5dfdbdf364b03ab11f3055f2678f665";
    sha256 = "1z2abq6xmp4zjhjr31w3nraypi986f1w2kanfh5qqkiy77llrqlg";
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
