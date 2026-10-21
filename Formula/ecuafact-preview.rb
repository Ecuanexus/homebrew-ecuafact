# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class EcuafactPreview < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "0.0.1-preview.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.3/ecuafact-0.0.1-preview.3-osx-arm64.tar.gz"
      sha256 "7ed8f412f63bfa2d79788b2e846c1964471a5b6948b7e7a05ef61a33bf0bfe00"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.3/ecuafact-0.0.1-preview.3-osx-x64.tar.gz"
      sha256 "5de61c060144a8b6613f5e0289ac575b8bcd7e154b9500e39cc97b5d2c9170f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.3/ecuafact-0.0.1-preview.3-linux-arm64.tar.gz"
      sha256 "1becd9a6ad330dbda5696e2db9c302a8fc4e30045dbaa785e3667ed4a919a063"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.3/ecuafact-0.0.1-preview.3-linux-x64.tar.gz"
      sha256 "2d2bc5dd28bcbc9ffd0bac3aa7385ac77d01face1c8fc42553d4d06b00a2f1fb"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
