require 'formula'

class Freetype <Formula
  # url 'http://download.savannah.gnu.org/releases/freetype/freetype-2.4.4.tar.bz2'
  url 'http://downloads.sourceforge.net/project/freetype/freetype2/2.4.4/freetype-2.4.4.tar.bz2'
  md5 'b3e2b6e2f1c3e0dffa1fd2a0f848b671'
  # url 'git://git.sv.gnu.org/freetype/freetype2.git', :tag => 'VER-2-4-4'
  homepage 'http://freetype.org/'
  version '2.4.4'

  depends_on 'zlib'

  def install
	# for static build
    # make install ansi
    # make
    # for builds from git
    # system "sh autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
