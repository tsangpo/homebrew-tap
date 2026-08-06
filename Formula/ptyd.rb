class Ptyd < Formula
  desc "A web terminal daemon serving an xterm.js UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.1.2"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.2/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "ef50bfe98e84c34656328b8d1535434f5069e99127267500f8619dba53826338"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.2/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "da243825f1cab30dd0786c1efe8ebc31701f9880ddc4a6a9ef25c4ee6b05a003"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.2/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "82ffb5bfdde843778dd3bf0e3835929bee93397a24cb0dfb47c0678b73b06d0f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.2/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c0631f258d7018bdda813a3bb118cff56537ee269dc0a8184deaf38430fb1d95"
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
