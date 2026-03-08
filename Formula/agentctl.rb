class Agentctl < Formula
  desc "CLI for agent hub validation, index generation, and skill management"
  homepage "https://github.com/geronimo-iia/agentctl"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.2.0/aarch64-apple-darwin.tar.gz"
      sha256 "5a33679149fbf66e3e6223dc4c4453449aa55758fc35fdb7b704233a7a7c53b5"
    else
      url "https://github.com/geronimo-iia/agentctl/releases/download/v0.2.0/x86_64-apple-darwin.tar.gz"
      sha256 "f955b48db95c34be3d7f8bb02b4cfbe5e98966322b63fcf42b69b13df6114948"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentctl --version")
  end
end
