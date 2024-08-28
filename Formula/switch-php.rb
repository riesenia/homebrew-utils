class SwitchPhp < Formula
    desc "Installs multiple PHP versions and switches between them"
    homepage "https://github.com/riesenia/homebrew-switch-php"
    url "https://github.com/riesenia/homebrew-switch-php/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "d114107ba0e3f044dbf6b14811a5d6f99c639447071ab6fac47d644be416f087"
    license "MIT"

    depends_on "httpd"

    depends_on "riesenia/utils/php@7.4"
    depends_on "shivammathur/extensions/imap@7.4"
    depends_on "shivammathur/extensions/xdebug@7.4"

    depends_on "shivammathur/php/php@8.1"
    depends_on "shivammathur/extensions/imap@8.1"
    depends_on "shivammathur/extensions/xdebug@8.1"

    depends_on "shivammathur/php/php@8.3"
    depends_on "shivammathur/extensions/imap@8.3"
    depends_on "shivammathur/extensions/xdebug@8.3"

    def install
        bin.install "switch-php"
    end
end
