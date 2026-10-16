# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class EcuafactPreview < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "0.0.1-preview"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview/ecuafact-0.0.1-preview-osx-arm64.tar.gz"
      sha256 "9a0bff68bedc9ab0550c1d3880a1cc8fd79b33603e809930b193de48a16226ff"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview/ecuafact-0.0.1-preview-osx-x64.tar.gz"
      sha256 "728c091f0cf46423688914f9c552fbccb7fcdcd3475fdcead10e570c53aa571a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview/ecuafact-0.0.1-preview-linux-arm64.tar.gz"
      sha256 "4faef3e5c71d732be6129c9740eee6154ea7a1e964843b8df1c5cde208f7b765"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview/ecuafact-0.0.1-preview-linux-x64.tar.gz"
      sha256 "48f52e0fc012f46e4ac2e8e0b31bdd53a41496f4fbfe722f40044aa5c43e8353"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
