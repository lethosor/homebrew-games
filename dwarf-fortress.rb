require 'formula'

class DwarfFortress < Formula
  homepage 'http://www.bay12games.com/dwarves/'
  url 'http://www.bay12games.com/dwarves/df_40_19_osx.tar.bz2'
  version '0.40.19'
  sha1 '6ffc8a0aac35c82082b84c27d4ebb14a9a1df542'

  def install
    (bin+'dwarffortress').write <<-EOS.undent
      #!/bin/sh
      exec #{libexec}/df
    EOS
    rm_rf 'sdl' # only contains a readme
    libexec.install Dir['*']
  end
end
