# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Beamlit < Formula
  desc ""
  homepage "https://www.beamlit.com"
  version "0.0.63"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.63/beamlit_Darwin_x86_64.tar.gz"
      sha256 "af43b3108ddb307c53859d39e1b5e77adc5d90788a6c90e53c49ff74e452fbf7"

      def install
        bin.install "beamlit"
        bin.install_symlink "beamlit" => "bl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beamlit/toolkit/releases/download/v0.0.63/beamlit_Darwin_arm64.tar.gz"
      sha256 "7f29f9a8e160575632cb2451e75d4e59e8794052f5c61f6d60b475b9ee21bf11"

      def install
        bin.install "beamlit"
        bin.install_symlink "beamlit" => "bl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.63/beamlit_Linux_x86_64.tar.gz"
        sha256 "0184546e40c5a8586813f353bcb9bcb5de30e7ac3b4018c199804b9497ac0d03"

        def install
          bin.install "beamlit"
          bin.install_symlink "beamlit" => "bl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/beamlit/toolkit/releases/download/v0.0.63/beamlit_Linux_arm64.tar.gz"
        sha256 "d0fa7835f4094197b746cc13ca90693fc8d5d1a84d9da24427eb2d02510fdec1"

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
