# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-25T15:16:26.629720613Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.11/smart-cache-cli-0.0.11.zip"
  version "0.0.11"
  sha256 "835977619cd547f4fc66c8cf052572df3eb97a8b1f67d6b79723768faa802958"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.11", output
  end
end
