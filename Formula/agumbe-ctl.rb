class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.2.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.25/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "2d5b1478167336650708c68669c26de29e04299dc1f4692451ed14cc5d838061"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.25/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "4f3b9a17dff898d3a13024645dd0d011c8da2b8ed43f849c290bc9e26143c5c4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.2.25/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "4ddae3e3b6c33d77d743a29f068f34496b50c5d75a6512bd9fba91f32aa27eca"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
