class Agentctl < Formula
  desc "CLI for agent hub validation, index generation, and skill management"
  homepage "https://github.com/geronimo-iia/agentctl"
  url "https://github.com/geronimo-iia/agentctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0821f7ffb3671ca3473d53cc986a53f353c425571b422102c4e170f6d56621f04"
  license "MIT OR Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
