require 'formula'

class DwarfFortress < Formula
  homepage 'http://www.bay12games.com/dwarves/'
  url 'http://www.bay12games.com/dwarves/df_40_22_osx.tar.bz2'
  version '0.40.22'
  sha1 '421782462179a510d6f7a3daa79d1082a2be2ac7'

  def install
    (bin+'dwarffortress').write <<-EOS.undent
      #!/bin/sh
      exec #{libexec}/df
    EOS
    rm_rf 'sdl' # only contains a readme
    libexec.install Dir['*']
  end
end
