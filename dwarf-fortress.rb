class DwarfFortress < Formula
  homepage "http://bay12games.com/dwarves/"
  url "http://bay12games.com/dwarves/df_40_23_osx.tar.bz2"
  version "0.40.23"
  sha1 "801bad7e7e37a981305fe20ea1e32e1b56e35306"

  def install
    (bin+"dwarffortress").write <<-EOS.undent
      #!/bin/sh
      exec #{libexec}/df
    EOS
    rm_rf "sdl" # only contains a readme
    libexec.install Dir["*"]
  end
end
