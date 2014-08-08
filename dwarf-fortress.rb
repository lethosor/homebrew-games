require 'formula'

class DwarfFortress < Formula
  homepage 'http://www.bay12games.com/dwarves/'
  url 'http://www.bay12games.com/dwarves/df_40_06_osx.tar.bz2'
  version '0.40.06'
  sha1 'a79c17248cf05037718449a8d27813c74afd77eb'

  def install
    (bin+'dwarffortress').write <<-EOS.undent
      #!/bin/sh
      exec #{libexec}/df
    EOS
    rm_rf 'sdl' # only contains a readme
    libexec.install Dir['*']
  end
end
