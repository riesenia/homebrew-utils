class Pass < Formula
    desc "Simplified Passbolt CLI access"
    homepage "https://github.com/rshop/homebrew-pass"
    url "https://github.com/rshop/homebrew-pass/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "bcdf358e7fdb7bd0b93c33fb784ef2e2577f4ddfc8852afcedc08764cdfc7e3d"
    license "MIT"

    depends_on "passbolt/tap/go-passbolt-cli"

    def install
      bin.install "pass"
      (share/"pass").install "passbolt.mp3"
    end
  end