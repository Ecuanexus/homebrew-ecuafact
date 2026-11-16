# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class Ecuafact < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docs.mynexusapi.com/"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.1/ecuafact-1.0.1-osx-arm64.tar.gz"
      sha256 "4f72f088af9668f2883e5bd82d3806491c696bfd90c9855c2127b405d4058455"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.1/ecuafact-1.0.1-osx-x64.tar.gz"
      sha256 "28b354f5ad1461077cfe8d2f8b7853ed13e113fffe7eab98a5cabf4fc36216db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.1/ecuafact-1.0.1-linux-arm64.tar.gz"
      sha256 "84bc2faae4a1363a16a051f53f34a41ad63506f19356627186d07f2d7222db5b"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.1/ecuafact-1.0.1-linux-x64.tar.gz"
      sha256 "370887021712362dacde8abf3f56fcf7ad8325d37ce194a2a0ae94076b9c5c75"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
