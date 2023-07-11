# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T17:33:54.176390637Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.7/smart-cache-cli-0.0.7.zip"
  version "0.0.7"
  sha256 "ea9db01139b33bf2d44a9d4af997f175b4cffed95ac02b171d15f27f49ebec08"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.7", output
  end
end
