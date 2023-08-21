# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-21T14:22:31.154497811Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.14/smart-cache-cli-0.0.14.zip"
  version "0.0.14"
  sha256 "4d509e7985d9610d260a46e006610dbd4c9d3a26c95eec2c51662d8f63f12d3d"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.14", output
  end
end
