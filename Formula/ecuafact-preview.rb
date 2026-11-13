# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class EcuafactPreview < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "0.0.1-preview.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.6/ecuafact-0.0.1-preview.6-osx-arm64.tar.gz"
      sha256 "d5929109f3a8545d929451e1a11ed1af5d179104e0c83093c15014a290996b5c"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.6/ecuafact-0.0.1-preview.6-osx-x64.tar.gz"
      sha256 "b13f9ea4682c96cf422fbe23c33bb1bb0a7eb236c37c04e9fd1f8e83f122be68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.6/ecuafact-0.0.1-preview.6-linux-arm64.tar.gz"
      sha256 "a42bafd7025a88cf472ab2b39ccd71d344221c68265c12511995f28e2adc861f"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.6/ecuafact-0.0.1-preview.6-linux-x64.tar.gz"
      sha256 "a92103d80f0d15a220f4eb71717c32e70055a21cb5d944b154543f7d70c53b05"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
