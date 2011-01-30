require 'formula'

class Cairo <Formula
  url 'http://cairographics.org/releases/cairo-1.8.10.tar.gz'
  homepage 'http://cairographics.org/'
  md5 'b60a82f405f9400bbfdcf850b1728d25'

  depends_on 'pkg-config' => :build
  depends_on 'libpng'
  depends_on 'pixman'
  # already installed with libpng
  depends_on 'zlib'

  def options
    [
      ["--with-x", "Build with X11 support."],
    ]
  end

  # Comes with Snow Leopard, but not Leopard
  # keg_only :provided_by_osx

  def install
    args = ["--prefix=#{prefix}",
            "--disable-dependency-tracking"]
    args << "--without-x" << "--enable-xlib=no" unless ARGV.include? "--with-x"
    system "./configure", *args
    system "make install"
  end
end
