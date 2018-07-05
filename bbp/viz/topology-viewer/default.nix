{ config
, fetchgitPrivate
, pkgconfig
, stdenv
, boost
, cmake
, highfive
, vmmlib
, brayns
}:

stdenv.mkDerivation rec {
    name = "topology-viewer-${version}";
    version = "0.1.0-201806";

    buildInputs = [ stdenv pkgconfig cmake boost highfive vmmlib brayns ];

    src = fetchgitPrivate {
        url = config.bbp_git_ssh + "/viz/Brayns-UC-TopologyViewer";
        rev = "f30122dfcbb8a383744c9e3671f189ba7ebc4e56";
        sha256 = "0m4w63bd7k9j4fs65k2z4zlggqg6x04bsl04mwipzhx9v7w16nyh";
    };

    enableParallelBuilding = true;
}
