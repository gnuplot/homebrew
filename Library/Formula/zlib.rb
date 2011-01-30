require 'formula'

class Zlib <Formula
  url 'http://downloads.sourceforge.net/project/libpng/zlib/1.2.5/zlib-1.2.5.tar.gz'
  # url '/tmp/gnuplot/zlib-1.2.5.tar.gz'

  homepage 'http://www.zlib.net/'
  # md5 'c735eab2d659a96e5a594c9e8541ad63'
  md5 'dbc4378560ada5a6773ea3124350f94b'

  def install
    # buggy configure script sets wrong dynamic lib extension
    ENV['CC'] = "/usr/bin/gcc"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
