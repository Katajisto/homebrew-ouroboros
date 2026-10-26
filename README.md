# Ouroboros for Homebrew

Ouroboros is a plan-first harness for coding agents. The agent lays out every file it will
touch as a graph in a window on your screen, you say go in chat, and from then on it can
only write the files the plan names. The same window shows PRs for review, each changed
file a node with its real diff.

Apple Silicon Macs only. Homebrew 7 won't load a formula from a tap you haven't trusted, so
trust this one first:

    brew trust --tap katajisto/ouroboros
    brew trust --formula katajisto/ouroboros/ouroboros
    brew install katajisto/ouroboros/ouroboros

Then register it with Claude Code:

    claude mcp add ouroboros -- ouroboros --stdio

The first tool call opens the window; every Claude Code session gets a tab in it.

Ouroboros is distributed as a binary; its source isn't public. The third-party licenses it
carries (the Karla and DejaVu fonts, the Jaison JSON library) are installed with it, in
`$(brew --prefix)/share/doc/ouroboros/THIRD_PARTY_NOTICES.txt`.
