class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl"
  version "0.2.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl/releases/download/v0.2.19/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "31f61c28c5079caf6a18eea011696a40fa643f45ff80a00565e180ea228aea48"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl/releases/download/v0.2.19/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "19fef3c255fa2fc974ffacdfb78bd0a8d0807ea412d30b253faf90a0310b11f9"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
