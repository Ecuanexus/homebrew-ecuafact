# Formula del tap Ecuanexus/homebrew-ecuafact (generada por scripts/Generar-ManifiestosCli.ps1).
class Ecuafact < Formula
  desc "CLI de facturacion electronica de Ecuafact para Ecuador (SRI)"
  homepage "https://docsapi.ecuafact.com/"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.0/ecuafact-1.0.0-osx-arm64.tar.gz"
      sha256 "0bfdd940ee34e60a2ab5f42ba0c638c26441328b25c6697f3332cbbc00399a4b"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.0/ecuafact-1.0.0-osx-x64.tar.gz"
      sha256 "0e23ececf78cf4285fdce41197510dbf31bc23f7af832871e1308ed5851f36b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.0/ecuafact-1.0.0-linux-arm64.tar.gz"
      sha256 "e5a0dd6f5172e9de366f4ca94e7d355132caf55ff194649543af9c3eb28dd111"
    end
    on_intel do
      url "https://github.com/Ecuanexus/ecuafact-cli/releases/download/v1.0.0/ecuafact-1.0.0-linux-x64.tar.gz"
      sha256 "d018af17ecb1e8c0bf600d096cfd28bc29bdf64aa9c37df36b84222705a15bb7"
    end
  end

  def install
    bin.install "ecuafact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecuafact --version")
  end
end
