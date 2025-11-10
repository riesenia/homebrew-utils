class SwitchPhp < Formula
    desc "Installs multiple PHP versions and switches between them"
    homepage "https://github.com/riesenia/homebrew-switch-php"
    url "https://github.com/riesenia/homebrew-switch-php/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "e87186127be1453b69dd0eb56d4adf6df1d122e898bcea191285eef45f3bae69"
    license "MIT"

    depends_on "riesenia/utils/rprint"
    depends_on "httpd"

    depends_on "shivammathur/php/php@7.4"
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
