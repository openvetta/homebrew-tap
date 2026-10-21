# 发布流水线以此为模板生成 openvetta/homebrew-tap 中的 Casks/folita.rb。
cask "folita" do
  version "0.1.1"
  sha256 "9d1a1043074d095b8df83003adc89e50c253081326edab3030457ed56b030a62"

  url "https://github.com/openvetta/folita/releases/download/v#{version}/Folita-#{version}.zip"
  name "Folita"
  desc "Clipboard manager with a Liquid Glass panel"
  homepage "https://github.com/openvetta/folita"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Folita.app"

  zap trash: [
    "~/Library/Containers/app.folita.Folita",
  ]
end
