class Pass < Formula
    desc "Simplified Passbolt CLI access"
    homepage "https://github.com/rshop/homebrew-pass"
    url "https://github.com/rshop/homebrew-pass/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "87fa74a3e1aefbd21ab79c72bb2b93dd047ca2a999e41764c7cded8431085128"
    license "MIT"

    depends_on "passbolt/tap/go-passbolt-cli"

    def install
      bin.install "pass"
      (share/"pass").install "passbolt.mp3"
    end
  end