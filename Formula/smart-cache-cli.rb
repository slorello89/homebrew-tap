# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T13:46:42.954221811Z
class SmartCacheCli < Formula
  desc "The CLI tool for managing Redis Smart Cache"
  homepage "https://github.com/slorello89/redis-smart-cache-cli"
  url "https://github.com/slorello89/redis-smart-cache-cli/releases/download/v0.0.6/smart-cache-cli-0.0.6.zip"
  version "0.0.6"
  sha256 "95915d8b8b3a34aaf63525a3add01d435c1043ac2b123596fc37460821e642fd"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/smart-cache-cli" => "smart-cache-cli"
  end

  test do
    output = shell_output("#{bin}/smart-cache-cli --version")
    assert_match "0.0.6", output
  end
end
