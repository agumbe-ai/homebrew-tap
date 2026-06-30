class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.9.0/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "5cffe25e082a084a2997e3479ce9656c6b8301e0f92f25650e4656e1a7dcdf19"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.9.0/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "417c2eb16fe000d0f5ef2e9996e2ee0e49b8647524b73c869db0af8dc7d5801a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.9.0/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "3c0aa91043d169ec5e048f13fddfcc309dec1497f5e9fb50ed317aa5470653be"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
