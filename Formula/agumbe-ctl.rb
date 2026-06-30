class AgumbeCtl < Formula
  desc "Operator CLI for the Agumbe platform"
  homepage "https://github.com/agumbe-ai/agumbe-ctl-releases"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.7.0/agumbe-ctl-darwin-amd64.tar.gz"
      sha256 "8831c5cccd312103ae86947f17ad393cc305675edda71b9574bab374e75420d1"
    elsif Hardware::CPU.arm?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.7.0/agumbe-ctl-darwin-arm64.tar.gz"
      sha256 "31c77d9c0aacb0d29fedfc34793329627da8b16fe4e9fcc51294c70dd18b0571"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/agumbe-ai/agumbe-ctl-releases/releases/download/v0.7.0/agumbe-ctl-linux-amd64.tar.gz"
      sha256 "dc9f94ce57103e29d023f919af67fbbed8f5aae240c625982921625ba456a8f8"
    end
  end

  def install
    bin.install "agumbe-ctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agumbe-ctl version")
  end
end
