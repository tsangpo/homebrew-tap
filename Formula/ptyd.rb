class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.1.5"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.5/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "6141c6aae1eca67fd384ae442a0a303fb1278c5cfc3132e487aa5fc8681396f4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.5/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "233ffc3e96dd8471dabedb7ebf10087e000abc88236692db3a0e51a0a227a596"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.5/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4bca9ea5b8c6ccca3bde006289abd81e568babe6c9701b47b63b7c54cddc1d15"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.5/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ee83ac6f2ca379708e48662c0eea31629a37fa53913108a9da5de4636cc60352"
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
    if OS.mac? && Hardware::CPU.arm?
      bin.install "ptyd"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "ptyd"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "ptyd"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "ptyd"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
