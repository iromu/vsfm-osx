require 'formula'

class Gtkx < Formula
  homepage 'http://www.gtk.org/'
  url 'http://ftp.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-2.24.11.tar.xz'
  sha256 '328b4ea19a61040145e777e2ac49820968a382ac8581a380c9429897881812a9'

  depends_on 'pkg-config' => :build
  depends_on 'glib'
  depends_on 'jpeg'
  depends_on 'libtiff'
  depends_on 'gdk-pixbuf'

  # Used by pango, but keg-only, so needs to be added to
  # the flags for gtk+ explicitly.
  depends_on 'cairo' if MacOS.leopard?

  depends_on 'pango'
  depends_on 'jasper' => :optional
  depends_on 'atk' => :optional

  fails_with_llvm "Undefined symbols when linking", :build => "2326"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-glibtest",
                          "--with-gdktarget=quartz"
    system "make install"
  end

  def test
    system "gtk-demo"
  end
end