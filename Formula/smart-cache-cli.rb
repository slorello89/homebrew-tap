# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-01T15:10:37.968065085Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.12/smart-cache-cli-0.0.12.zip"
  version "0.0.12"
  sha256 "84bcd2d8eb1eaeeb96bb818295550838d65f2521ff4ee95a6227c4761a231d04"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.12", output
  end
end
