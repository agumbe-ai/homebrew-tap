class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.11.0/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "7e93882ff789ce0b17eb08c26dae7941252110ed2cee4ccf981a6af87715bdca"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.11.0/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "e7f2c4d2b4bda80342dc3768ae754b8b83d4f771952f40ba0602ad094d708247"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.11.0/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "65bfec4f3b66628a248121e059bc89ba829b578965add25248eb446d5dbd23eb"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
