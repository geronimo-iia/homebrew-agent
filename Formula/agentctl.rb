class Agentctl < Formula
  desc "CLI for agent hub validation, index generation, and skill management"
  homepage "https://github.com/geronimo-iia/agentctl"
  version "0.4.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.4.1/aarch64-apple-darwin.tar.gz"
      sha256 "39d452a7bc6499d1748b62c4ddfe399bee3975cb18c9ba7649a8bf04f75f92b5"
    else
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.4.1/x86_64-apple-darwin.tar.gz"
      sha256 "7a979e3b9b0794b76c208dc899d861a52b7e6cc01a422bae7564e315229883c9"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
