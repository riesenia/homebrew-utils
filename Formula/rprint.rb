class Rprint < Formula
  desc "Colored print utility for bash scripts"
  homepage "https://github.com/riesenia/homebrew-rprint"
  url "https://github.com/riesenia/homebrew-rprint/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fc9e8c4caab0b9854dbd1a6154f8e0a3d21d75abe7fd7fc56052e3c78443a6e7"
  license "MIT"

  def install
    bin.install "rprint"
  end

  def caveats
    <<~EOS
      rprint - Colored print utility installed

      Usage:
        rprint info "message"
        rprint success "message"
        rprint error "message"
        rprint warning "message"
        rprint debug "message"     (shown only if DEBUG=1)

      Examples:
        rprint info "Starting process..."
        rprint success "Done!"
        rprint error "Something went wrong"
    EOS
  end
end
