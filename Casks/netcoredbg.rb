cask "netcoredbg" do
  version "3.2.0-1092"
  sha256 "f4fa33b3ff874910cc184b4bb3b9c56d0abdf5c6521cee0b144d7c6e4a6e59ea"

  url "https://github.com/Samsung/netcoredbg/releases/download/#{version}/netcoredbg-osx-arm64.zip"
  name "netcoredbg"
  desc "NetCoreDbg is a managed code debugger with GDB/MI, VSCode DAP and CLI interfaces for CoreCLR."
  homepage "https://github.com/Samsung/netcoredbg"

  depends_on arch: :arm64

  binary "netcoredbg/netcoredbg"

  livecheck do
    url "https://github.com/Samsung/netcoredbg/releases/latest"
    regex(/v?(\d+(?:\.\d+)+(?:-\d+)+)/i)
    strategy :github_latest
  end
end
