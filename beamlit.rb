# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Beamlit < Formula
  desc ""
  homepage "https://www.beamlit.com"
  version "0.0.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.28/beamlit_Darwin_x86_64.tar.gz"
      sha256 "05072e58a902bde664ff69837a2ecedff5c2288e467b1c840f826d5ee7750d47"

      def install
        bin.install "beamlit"
        bin.install_symlink "beamlit" => "bl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.28/beamlit_Darwin_arm64.tar.gz"
      sha256 "070bfc55357b52833c5a2d2fb226bb2c5d622bb388bf55f4320c132a681f0db2"

      def install
        bin.install "beamlit"
        bin.install_symlink "beamlit" => "bl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.28/beamlit_Linux_x86_64.tar.gz"
        sha256 "f66d05c494ab705fd220b53fafae3d91ce17bcdfed8ec2ee9d999e1deeaed10e"

        def install
          bin.install "beamlit"
          bin.install_symlink "beamlit" => "bl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.28/beamlit_Linux_arm64.tar.gz"
        sha256 "08202c3a7104aa6e588f1f039423ecd9aabc2415efc9b5504d8e9cc3a82e8f90"

        def install
          bin.install "beamlit"
          bin.install_symlink "beamlit" => "bl"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Beamlit is a tool to ship AI agents that never slack.
    EOS
  end
end
