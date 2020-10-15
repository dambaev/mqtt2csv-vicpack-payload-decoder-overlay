{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "mqtt2csv-vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/mqtt2csv-vicpack-payload-decoder.git";
    rev = "7e00c4595a6ef9f00ecf9c32b1849e11c85e0b7b";
    sha256 = "1h2m1qayj9xq5106bwmpx73mfjrmcmxrv9ws2ipc32awafnygzdi";
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
