class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.7.1/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "2f12df7004245374746ded6bb8d03d8e398cb793ccbe4666a2155c3ffc621c74"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.7.1/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "009ad6f9573db647223ba05b61f61c27865b2f08d03a92502ee87985c0f8284f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.7.1/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "346ddf9da5992517ea3e62c719ea2a715721c59ae002e68d56157ca8f184772c"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
