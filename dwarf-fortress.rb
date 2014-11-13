require 'formula'

class DwarfFortress < Formula
  homepage 'http://www.bay12games.com/dwarves/'
  url 'http://www.bay12games.com/dwarves/df_40_16_osx.tar.bz2'
  version '0.40.16'
  sha1 'f8a4ed7e3ae08ccf099c6deb727c519a8596fa3e'

  def install
    (bin+'dwarffortress').write <<-EOS.undent
      #!/bin/sh
      exec #{libexec}/df
    EOS
    rm_rf 'sdl' # only contains a readme
    libexec.install Dir['*']
  end
end
