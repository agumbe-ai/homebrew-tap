class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.3.2/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "a9c465570bb7d8dd09a63526a397577cf76752d3bfc28784a9d65e56f2b63955"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.3.2/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "e325b35b90f868e6863d64fb4ebecf0301537a160fe22b9ef9bef41d0779dd3d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.3.2/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "bbadfd57ddcf05b617bf4db25df94094daf04338cfa4f11254a7e1959d9f64bd"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
