class Agentctl < Formula
  desc "CLI for agent hub validation, index generation, and skill management"
  homepage "https://github.com/geronimo-iia/agentctl"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.4.0/aarch64-apple-darwin.tar.gz"
      sha256 "df6ae91cca5eb7d85d98153040dd5c53ff17f9d233427650789fb92ed869e559"
    else
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.4.0/x86_64-apple-darwin.tar.gz"
      sha256 "8e6380b7e5f4935ed6f42017ff27dbe4f7e403bb314c95fe4678869eba6f80f3"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
