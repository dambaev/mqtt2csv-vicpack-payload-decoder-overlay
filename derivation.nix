{ stdenv, pkgs, fetchzip, fetchpatch, fetchgit, fetchurl }:
stdenv.mkDerivation {
  name = "mqtt2csv-vicpack-payload-decoder";

  src = fetchgit {
    url = "https://github.com/dambaev/mqtt2csv-vicpack-payload-decoder.git";
    rev = "eacca383de4e49f2a1c99c3489ad6f2fd47c7aeb";
    sha256 = "1s13mg78b5j17am8qb4ng1q53awx9d8xwr9b845f6y73q1vl7l3b";
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
