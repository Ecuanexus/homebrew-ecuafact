# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class EcuafactPreview < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "0.0.1-preview.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.4/ecuafact-0.0.1-preview.4-osx-arm64.tar.gz"
      sha256 "c2ed76ef08ebe15629ef05d1028c9d54abbcb8413189aaefea0fba239ea03bb9"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.4/ecuafact-0.0.1-preview.4-osx-x64.tar.gz"
      sha256 "66de3cdcd2d8265d94e8e8d8c12538c29a929191f486bbe30b2ff6be28880188"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.4/ecuafact-0.0.1-preview.4-linux-arm64.tar.gz"
      sha256 "dd7e0537155859a453bfcfa8096de24083f54f2c326e053160972a7a436ce9b3"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v0.0.1-preview.4/ecuafact-0.0.1-preview.4-linux-x64.tar.gz"
      sha256 "6cebc36c336ed47bc0cc6f8291a6adc191de9f9a08b3d070342bdb7b6e01a0b4"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
