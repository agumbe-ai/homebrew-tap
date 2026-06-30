class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.5.0/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "eb354bf2725cb00a3c7fba87b5aec462f34a383c2cec66aac50c98209b648f93"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.5.0/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "de3fd556707174b04284975ffad033cc260cec09a85a45613783c355a7ffd07c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.5.0/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "96fe769b769f48c1ad7685eaaf75d02bebedecc478d222dd981dce90500382c3"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
