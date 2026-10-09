class Ptyd < Formula
  desc "A web terminal daemon serving a browser terminal UI attached to a pty over WebSocket"
  homepage "https://github.com/tsangpo/ptyd"
  version "0.1.6"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.6/ptyd-aarch64-apple-darwin.tar.xz"
      sha256 "260e0bdc58539f28d9a3bf231a89318bd9f6db832f1386a7888e1ee412e65cd3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.6/ptyd-x86_64-apple-darwin.tar.xz"
      sha256 "c5a9552078ea4ffcc617a49de9c03bf28d8540c7e7d4a5d8e54e76671e16c066"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.6/ptyd-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "5ea1fc2e34dbf52be8482f2c3d3ac692aa5c5b73fb0b946bf37c37985d6593f7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/tsangpo/homebrew-tap/releases/download/v0.1.6/ptyd-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "3990cd65b156a4186d5de7100512536991f90c95561697cd65e9a2cfc8d121aa"
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
