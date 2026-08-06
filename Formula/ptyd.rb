class Ptyd < Formula
  desc "A web terminal daemon serving an xterm.js UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.1.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.1/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "48a6a9b73c9b5e69ba8267a218d9d2cd4fa8ec055eccef88fbceb0ecf971ab0b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.1/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "2100345b27d3b3e89b79799a63c367a1e3825b75e4f43429e6b673c92ff68600"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.1/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "dd85db8c98fdda48f31bacfed645d25c8591ddecdfa556c9b8421b2a1aef492c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.1/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c437d39923b37f8f5265cb7744ec3c9282b5090cdc9864aa22f03d9438a02e5a"
    end
  end

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "ptyd" if OS.mac? && Hardware::CPU.arm?
    bin.install "ptyd" if OS.mac? && Hardware::CPU.intel?
    bin.install "ptyd" if OS.linux? && Hardware::CPU.arm?
    bin.install "ptyd" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
