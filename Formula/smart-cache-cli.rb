# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-12T12:43:27.922795646Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.9/smart-cache-cli-0.0.9.zip"
  version "0.0.9"
  sha256 "342a88f10f4d13768cdaf39a89e4168a52c620c2bb07491be4e9ea7508a390d4"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.9", output
  end
end
