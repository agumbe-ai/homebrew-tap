class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.2.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.23/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "b4495a50156c880f5853356fc1bedcb694e5a3a4dbbfbc597fdd914cdcb28618"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.23/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "8021bc3a8b14848a329a6fe44a4d46b7f5151e477bd0a41ce303ac208b995340"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.23/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "aeef643586ef92342f31fe40feb50af6556f6aec2016fdb89f06d74facf871dc"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
