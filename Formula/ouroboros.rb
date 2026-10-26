# url, sha256 and version are rewritten by release.sh in the Ouroboros source repo on
# every release. Edit the rest by hand.
class Ouroboros < Formula
  desc "Plan-first MCP harness for coding agents, with the plan drawn as a graph"
  homepage "https://github.com/Katajisto/homebrew-ouroboros"
  url "https://github.com/Katajisto/homebrew-ouroboros/releases/download/v0.1.0/ouroboros-0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "3a70bf10cf36913f8c91d07e4efa962d367f6c6faeacc04c1d2319140d136507"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ouroboros"
    doc.install "THIRD_PARTY_NOTICES.txt"
  end

  def caveats
    <<~EOS
      Register it with Claude Code:
        claude mcp add ouroboros -- ouroboros --stdio
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ouroboros --version").strip
  end
end
