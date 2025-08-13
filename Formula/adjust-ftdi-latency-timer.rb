class AdjustFtdiLatencyTimer < Formula
  desc "Tool to adjust FTDI latency timer settings"
  homepage "https://github.com/andyshinn/ftdilatency"
  url "https://github.com/andyshinn/ftdilatency/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "GPL-2.0-only"

  depends_on "libusb"
  depends_on "libftdi"

  def install
    system "make", "all"
    bin.install "adjust-ftdi-latency-timer"
  end

  test do
    # Basic test to ensure the binary exists and shows help
    assert_match "usage:", shell_output("#{bin}/adjust-ftdi-latency-timer 2>&1", 255)
  end
end
