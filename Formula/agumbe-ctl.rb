class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl"
  version "0.2.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl/releases/download/v0.2.21/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "cc5c3342094c62664c08582492584e69ad869dcab754d4f6f8f359e21460b5f6"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl/releases/download/v0.2.21/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "86c7bd577478286128b2d0354b528c9339aef765b170e3d3601039c0db741de1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl/releases/download/v0.2.21/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "229055d8ea0dd7033959622e16dffc98eee1b644d2f0579096d55f8f99be3f9e"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
