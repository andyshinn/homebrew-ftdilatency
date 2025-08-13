class AdjustFtdiLatencyTimer < Formula
  desc "Tool to adjust FTDI latency timer settings"
  homepage "https://github.com/andyshinn/homebrew-ftdilatency"
  url "https://github.com/andyshinn/homebrew-ftdilatency/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "7774490a353c02253822e2b142f3c4b4445e8609636f94f1f5916733b7686f19"
  license "GPL-2.0-only"

  depends_on "libusb"
  depends_on "libftdi"

  def install
    system "make", "all"
    bin.install "adjust-ftdi-latency"
  end

  test do
    # Basic test to ensure the binary exists and shows help
    assert_match "usage:", shell_output("#{bin}/adjust-ftdi-latency 2>&1", 255)
  end
end
