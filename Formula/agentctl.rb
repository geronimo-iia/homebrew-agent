class Agentctl < Formula
  desc "CLI for agent hub validation, index generation, and skill management"
  homepage "https://github.com/geronimo-iia/agentctl"
  version "0.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.5.0/aarch64-apple-darwin.tar.gz"
      sha256 "1711440e3386d786d07efe1d77d0fa52f486411d978bcae787c2bc43ab4fa98c"
    else
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.5.0/x86_64-apple-darwin.tar.gz"
      sha256 "e1309b64091a1bdd9da0c895ad98c7a1f8fbcebe94ae7ebcc7c54bb3f857d68f"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
