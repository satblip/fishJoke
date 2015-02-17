class FishJoke < Formula
  homepage "https://github.com/satblip/fishJoke"
  url "https://s3-eu-west-1.amazonaws.com/fishjoke/fishjoke.tar.gz"
  sha1 "4f6b4fa723cb7db439c6ed1cfa48e475bbc930b7"
  version "0.1"

  depends_on "node"
  depends_on "fish"

  def install
    # copy all files to fish/functions
    cp_r %w[fish_greeting.fish fish_joke/], "~/.config/fish/functions"
  end

  test do
    system "~/.config/fish/functions/fish_joke/joke"
  end
end

