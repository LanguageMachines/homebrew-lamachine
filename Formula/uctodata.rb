class Uctodata < Formula
  desc "Data for Unicode Tokenizer Ucto"
  homepage "https://languagemachines.github.io/ucto"
  url "https://github.com/LanguageMachines/uctodata/releases/download/v0.7.1/uctodata-0.7.1.tar.gz"
  sha256 "5f2b18144be4458d9b94baab6f0de9c453bad157e57cd575e9541b8d3897328a"

  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-silent-rules"
    system "make", "install"
  end

  def caveats; <<~EOS
    To use the uctodata with ucto without specifying a complete path to
    one of the configuration files, run this:
      ln -s #{share}/ucto/* #{Formula["ucto"].opt_share}/ucto/
    EOS
  end
end
