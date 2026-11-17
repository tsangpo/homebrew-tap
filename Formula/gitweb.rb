class Gitweb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/gitweb"
  version "0.2.0"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.0/gitweb-aarch64-apple-darwin.tar.xz"
      sha256 "a080e21fc87e239ea2e23605453aa1218f61b89136bac15ebb9303d89a151b15"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.0/gitweb-x86_64-apple-darwin.tar.xz"
      sha256 "103d75abb27092163ffb42eebd23d629d8fb2f932fd28a714fc3eed323986ea9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.0/gitweb-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "35b9b403f2f19d4165b862507f75432f9eca70118419e693adad62b6178bf118"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/gitweb-v0.2.0/gitweb-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f41f8fffe380b90f0a05645e8fba3015d0b88be2f3541d718e13b65f1deafe26"
    end
  end

  def install
    bin.install "gitweb"
  end
end
