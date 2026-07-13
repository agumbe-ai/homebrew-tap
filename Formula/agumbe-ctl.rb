class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.13.0/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "0dafd96a2ebd7d5e7f5eff0e354174c98b559257a7de95df8a54a2ca63b95200"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.13.0/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "8b10cc0b3c698f46f8c1108dc3fe15f48400ada0850f6764c0b0bc78c9ca87bb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.13.0/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "af20843ece0038885e7011ea5a347398fa16662a98b8f73bc7b42001982b3071"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
