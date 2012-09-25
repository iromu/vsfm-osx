require 'formula'

class Freetype2 <Formula
  url 'http://download.savannah.gnu.org/releases/freetype/freetype-2.4.10.tar.bz2'
  homepage 'http://freetype.org/'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end