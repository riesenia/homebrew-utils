class SwitchPhp < Formula
    desc "Installs multiple PHP versions and switches between them"
    homepage "https://github.com/riesenia/homebrew-switch-php"
    url "https://github.com/riesenia/homebrew-switch-php/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "cb9a231825b9d7b91a40dee62d34f5ac46e31c822ceffd9a95e7e14de9c41690"
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

    depends_on "shivammathur/php/php@8.4"
    depends_on "shivammathur/extensions/imap@8.4"
    depends_on "shivammathur/extensions/xdebug@8.4"

    def install
        bin.install "switch-php"
    end
end
