# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class EcuafactPreview < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "0.0.1-preview.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.2/ecuafact-0.0.1-preview.2-osx-arm64.tar.gz"
      sha256 "5eb2dfcfbd690920455bfd927b48eaeb6e74159aa274a64acabdf90d219bf395"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.2/ecuafact-0.0.1-preview.2-osx-x64.tar.gz"
      sha256 "f97c3d240b6403d1ad0ff16ab2a29f36ca3396b629d31b12b073cc18e30bd2d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.2/ecuafact-0.0.1-preview.2-linux-arm64.tar.gz"
      sha256 "fb30b65034ab923425917df1121cbd3deb1f5a8763bb983bfb82f76281877141"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.2/ecuafact-0.0.1-preview.2-linux-x64.tar.gz"
      sha256 "8ba8b4fe43bf13a8accf4f3ae5a94c993cd27fbd8649f5dbb7857e21882a0486"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
