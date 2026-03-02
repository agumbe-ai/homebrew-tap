class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.2.27"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.27/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "41bd5732a4c0056ab9f1f940920a4e42789e0f87dfba00878eaf86841e7a97a8"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.27/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "e9983f7f6936175c20eb72a303e1f341cb2a74463f9ae053722824c1c354c1dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.27/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "39d36ef71937b5e0bf968d29f947da67511dc37e0b92ee22f53d6a89e145b714"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
