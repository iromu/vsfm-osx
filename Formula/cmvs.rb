require 'formula'

class Cmvs < Formula
  homepage ''
  url 'http://grail.cs.washington.edu/software/cmvs/cmvs-fix2.tar.gz'
  sha1 ''

  # depends_on 'cmake' => :build
depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test cmvs-fix`.
    system "false"
  end
end
