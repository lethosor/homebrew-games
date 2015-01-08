class DwarfFortress < Formula
  homepage "http://bay12games.com/dwarves/"
  url "http://bay12games.com/dwarves/df_40_24_osx.tar.bz2"
  version "0.40.24"
  sha1 "e9e5c5d9d5c2dd4c8078060b705829d45231051d"

  def install
    (bin+"dwarffortress").write <<-EOS.undent
      #!/bin/sh
      exec #{libexec}/df
    EOS
    rm_rf "sdl" # only contains a readme
    libexec.install Dir["*"]
  end
end
