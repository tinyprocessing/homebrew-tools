class Relish < Formula
  desc "Relish developer tool"
  homepage "https://github.com/tinyprocessing/relish"
  url "https://github.com/tinyprocessing/relish/releases/download/1.0.0/relish.zip"
  license "MIT"

  def install
    bin.install "bin/relish"
    pkgshare.install "relish"
  end

  def caveats
    <<~EOS
      To complete the setup of Relish, you need to copy the configuration files to your home directory:

      cp -rf #{opt_pkgshare}/relish/ ~/.config/relish/

      Additionally, please copy ~/.config/relish/Relish.plist to your project root folder and adjust the paths as necessary:

      Change path to your projects in Relish.plist accordingly.
    EOS
  end

  test do
    system "#{bin}/relish", "--version"
  end
end



