class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/10ko/garden/releases/download/v0.11.0/garden-v0.11.0-macos-amd64.tar.gz"
  version "0.11.0"
  sha256 "a928131d854d924bc3b1a4723e98ced3fd4bc7a6809e5c1e3f516033556c085a"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works.
    system bin/"garden", "--help"
  end
end
