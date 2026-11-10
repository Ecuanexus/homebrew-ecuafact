# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class EcuafactPreview < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "0.0.1-preview.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.5/ecuafact-0.0.1-preview.5-osx-arm64.tar.gz"
      sha256 "52b98b0020d04b7b42fd76676f0e55f7fb9e7c75e02f2da1446fb990b3f477e7"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.5/ecuafact-0.0.1-preview.5-osx-x64.tar.gz"
      sha256 "9e4d1537c89f19712360d6568f48ac341c8fbd528fad8fc7ef5895b5cc0ccd05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.5/ecuafact-0.0.1-preview.5-linux-arm64.tar.gz"
      sha256 "72fae65148fa8ad6db099df6fc920f3ea287d193f6cfbc290ee7ec7fe6b8af1c"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.5/ecuafact-0.0.1-preview.5-linux-x64.tar.gz"
      sha256 "091156197df7b6546539ab51edaafd4c386265a45a2afbc6aca16b6bee7edb24"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
