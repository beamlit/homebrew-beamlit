# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Beamlit < Formula
  desc ""
  homepage "https://www.beamlit.com"
  version "0.0.7"

  on_macos do
    on_intel do
      url "https://github.com/beamlit/toolkit/releases/download/0.0.7/beamlit_Darwin_x86_64.tar.gz"
      sha256 "ec4fecc89d5b7aa974db49c0dad699a70fb74fe8f6359eacd16b314fbc0038ef"

      def install
        bin.install "beamlit"
      end
    end
    on_arm do
      url "https://github.com/beamlit/toolkit/releases/download/0.0.7/beamlit_Darwin_arm64.tar.gz"
      sha256 "9b263bc9e0e793916aa47c177d4f4f94d8bdcbc794799535abbf0577da941da9"

      def install
        bin.install "beamlit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/0.0.7/beamlit_Linux_x86_64.tar.gz"
        sha256 "4ff3631a3d57018f66bc93956729640eb92ecc3c974a9eb6d945aea9cae12f4b"

        def install
          bin.install "beamlit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/0.0.7/beamlit_Linux_arm64.tar.gz"
        sha256 "d63d9aad22ecd50119c00f13966f0a952074539be0d74bc38a83fc03250cd1b7"

        def install
          bin.install "beamlit"
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
