# ThinkPad T14 Gen 1 AMD Hackintosh

> **A guide to using a Thinkpad for macOS**


## 📝 Specifications

| Component             | Detail                  |
|-----------------------|-------------------------|
| **CPU**               | Ryzen 7 Pro 4750U       |
| **GPU**               | Vega 7                  |
| **RAM**               | 32GB                    |
| **Motherboard**       |  20UDCTO1WW         |
| **Audio Codec**       | ALC257                  |
| **Ethernet Card**     | RTL811                  |
| **Wifi/BT Card**      | Intel AX200             |
| **Touchpad Devices**  | Synaptics Glass Touchpad      |
| **BIOS Version**      | Latest                  |
| **Storage**           | RKT303.3 2TB NVME       |
| **OpenCore Version**  | 0.99                    |
| **Device**  | Thinkpad T14 Gen 1 AMD                 |

## 💻 Supported macOS Versions

 - **Sonoma**: Fully tested and supported. Improved BT performance compared to Monterey
- **Ventura**: Potential support, testing not yet concluded.
- **Monterey**: Fully tested and supported.

Please note that while Monterey and Sonoma are confirmed to work well with this setup, Ventura has not yet been tested. If you decide to test Ventura on your own Hackintosh, your feedback and contributions would be highly valuable to the community.
``

## ✅ What's Working

- **Wifi/BT**: AirPods may have audio issues, gets smoother when using Sonoma
- **Trackpad**: Intermittent glass replacement issues
- **FindMy**
- **Fan Control**: Full YogaSMC EC Access
- **Battery Status**
- **Camera**
- **IGPU**
- **Backlight**
- *...and more!*

## ❌ Known Issues

- **Airdrop**: Not functioning due to Intel cards not being native, works only on Broadcom cards
- **Screen Mirroring**: Not available unless using a paid service such as airserver
- **Brightness**: Adjustment is too rapid and therefore stops at a certain point

##  Useful Images
![enter image description here](https://preview.redd.it/1k9kkvgyd5pc1.png?width=465&format=png&auto=webp&s=d66c587002d3d38f4e5bebeccd9cf082b3c95b6a)
Tree of entire Opencore EFI
![enter image description here](https://preview.redd.it/e8l21xgyd5pc1.png?width=276&format=png&auto=webp&s=e036eca6688a642311997fce3b3a08e0d53a0293)
Screenshot of About This Mac
## 💡 Tips

- For troubleshooting, refer to the `ISSUES` tab.
- Contributions are welcome! See `CONTRIBUTING.md` for how to get started.

## 🤝 Contributions

Feel free to fork, star, and contribute to this project. Every bit of help is appreciated!

## 🙏 Acknowledgements

A shoutout to the Dortania guide and the AMD OSX Discord community for their support. And this would not have been possible without NootedRed!

## ⚠️ Disclaimer



This is a community-driven project for educational purposes. Not affiliated with Lenovo.


## Credits

- **[Apple](https://github.com/apple)**: For macOS.
- **[Dortania Guide](https://dortania.github.io/getting-started/)**: For their invaluable detailed OpenCore guide.
- **[acidanthera](https://github.com/acidanthera)**: For their OpenCore bootloader and essential kexts that make running macOS on X86 possible.
- **[Baio1977](https://github.com/Baio1977)** and **[Askwakhid](https://github.com/askwakhid)**: For both of their Hackintosh EFI posts about the intel version of the T14.


