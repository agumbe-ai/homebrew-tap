class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.9.1/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "4eb9a07d8a2d605c83e8e3a3eb1279553aeca1328d26e5e99d708fd99ac39255"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.9.1/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "a93fc4ad9a58135b18cdb97b1bd43c322cd2c2377e64cab18bda4d9286623701"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.9.1/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "ec922c83f5e9f4a55e5c81630fee97976d17c610952021eccae39f011ec56fd3"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
