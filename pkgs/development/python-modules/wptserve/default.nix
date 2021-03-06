{ lib
, buildPythonPackage
, fetchPypi
, isPy3k
}:

buildPythonPackage rec {
  pname = "wptserve";
  version = "2.0";

  disabled = isPy3k;

  src = fetchPypi {
    inherit pname version;
    sha256 = "9d0c6adc279748abea81ac12b7a2cac97ebbdd87826dc11f6dbd85b781e9442a";
  };

  propagatedBuildInputs = [ ];

  meta = {
    description = "A webserver intended for web browser testing";
    homepage =  http://wptserve.readthedocs.org/;
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ raskin ];
  };
}
