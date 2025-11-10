class ImportDb < Formula
  desc "Import MySQL database from local or remote dual-file dumps (.1.sql + .2.sql.gz)"
  homepage "https://github.com/riesenia/homebrew-import-db"
  url "https://github.com/riesenia/homebrew-import-db/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "a38ae42b9f62111a260ac7c760f4e9e5cfb18c21c7082fadb7f53a3265c5d985"
  license "MIT"

  depends_on "riesenia/utils/rprint"
  depends_on "mysql-client"

  def install
    bin.install "import-db"
    (share/"import-db").install ".import-db.conf.example"
  end

  def post_install
    config_file = "#{Dir.home}/.import-db.conf"
    unless File.exist?(config_file)
      cp "#{share}/import-db/.import-db.conf.example", config_file
      ohai "Created #{config_file}"
      ohai "Edit this file with your MySQL settings and post-import queries"
    end
  end

  def caveats
    <<~EOS
      Configuration file created at ~/.import-db.conf
      Edit this file with your MySQL settings and post-import queries.

      Usage:
        import-db <database> <path_or_url>
        import-db mydb /path/to/db-hash.1.sql
        import-db mydb https://example.com/export/db-hash.1.sql
        import-db -u user:pass mydb https://example.com/export/db-hash.1.sql

      Example config:
        #{HOMEBREW_PREFIX}/share/import-db/.import-db.conf.example
    EOS
  end

  test do
    system "#{bin}/import-db", "-h"
  end
end
