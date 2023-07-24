# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-24T16:46:32.145511429Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.10/smart-cache-cli-0.0.10.zip"
  version "0.0.10"
  sha256 "352496ca098ea2091db7655f4c782c9da7871e016890c2758b6ef85088287dd0"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.10", output
  end
end
