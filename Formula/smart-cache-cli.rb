# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T17:56:51.491216317Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.8/smart-cache-cli-0.0.8.zip"
  version "0.0.8"
  sha256 "94f746057283d07404df33215e8be32027582608a009971ee6b6611301ef3a49"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.8", output
  end
end
