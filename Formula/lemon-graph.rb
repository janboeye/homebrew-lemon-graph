class LemonGraph < Formula
    desc "Library for Efficient Modeling and Optimization in Networks"
    homepage "https://lemon.cs.elte.hu/trac/lemon"
    sha256 "ff00cc1b7aafd8481bf8a1b13303de79ec4dec485e41c807f9e95f369b917d78"
    head "https://github.com/The-OpenROAD-Project/lemon-graph"
    url "https://github.com/The-OpenROAD-Project/lemon-graph/archive/refs/tags/1.3.1.tar.gz"
    version "1.3.1"
    license "BSL-1.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-B", "build","-DCMAKE_CXX_FLAGS="-std=c++17", "-DLEMON_ENABLE_SOPLEX=OFF", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
        system "cmake", "--build", "build", "-j", "--target", "install"
    end
end
