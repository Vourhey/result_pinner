{ pkgs ? import <nixpkgs> { }
, stdenv
, mkRosPackage
, robonomics_comm
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "result_pinner";
  version = "0.2.0";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm python3Packages.requests ];

  meta = with stdenv.lib; {
    description = "Helper service for pinning result files";
    homepage = http://github.com/vourhey/result_pinner;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
