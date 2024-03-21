# ThinkPad T14 Gen 1 AMD Hackintosh

> **A comprehensive guide to using a ThinkPad for macOS**

## 📝 Specifications

| Component             | Detail                  |
|-----------------------|-------------------------|
| **CPU**               | Ryzen 7 Pro 4750U       |
| **GPU**               | Vega 7                  |
| **RAM**               | 32GB                    |
| **Motherboard**       | 20UDCTO1WW              |
| **Audio Codec**       | ALC257                  |
| **Ethernet Card**     | RTL811                  |
| **Wifi/BT Card**      | Intel AX200             |
| **Touchpad Devices**  | Synaptics Glass Touchpad|
| **BIOS Version**      | Latest                  |
| **Storage**           | RKT303.3 2TB NVME       |
| **OpenCore Version**  | 0.99                    |
| **Device**            | Thinkpad T14 Gen 1 AMD  |

## 💻 Supported macOS Versions

- **Sonoma**: Fully tested and supported. Improved BT performance compared to Monterey.
- **Ventura**: Potential support, testing not yet concluded.
- **Monterey**: Fully tested and supported.

<details>
<summary>✅ What's Working</summary>

- **Wifi/BT**: AirPods may have audio issues, gets smoother when using Sonoma.
- **Trackpad**: Intermittent glass replacement issues.
- **FindMy**
- **Fan Control**: Full YogaSMC EC Access.
- **Battery Status**
- **Camera**
- **IGPU**
- **Backlight**
- **Dual Boot with Windows**
- *...and more!*

</details>

<details>
<summary>❌ Known Issues</summary>

- **Airdrop**: Not functioning due to Intel cards not being native, works only on Broadcom cards.
- **Screen Mirroring**: Not available unless using a paid service such as airserver.
- **Brightness**: Adjustment is too rapid and therefore stops at a certain point.

</details>

<details>
<summary>🛠️ Post Install (Recommended)</summary>

After installing macOS, it's recommended to adjust certain settings for optimal performance:

- **iGPU Memory**: Increase the iGPU memory allocation in your BIOS settings to at least 1GB. For better performance with demanding applications, consider setting it to 2GB.
- **YogaSMC app**: Get more control over your system, Fan Control, Backlight, 

</details>


<summary>⚙️ BIOS Settings (Mandatory)</summary>

To ensure your Hackintosh functions correctly, configure the following mandatory BIOS settings:

**Config Tab:**
- Display
  - Boot Display Device -> Thinkpad LCD
  - Shared Display Priority -> HDMI
  - Boot Time Extension -> Disabled

**Security Tab:**
- Memory Protection -> Execution Prevention -> On
- Secure Boot -> Off

**Startup Tab:**
- UEFI/Legacy Boot -> UEFI Only

These settings are crucial for the proper operation of your Hackintosh system.

</details>

<details>
<summary>📸 Useful Images</summary>

![Tree of entire Opencore EFI](https://preview.redd.it/1k9kkvgyd5pc1.png?width=465&format=png&auto=webp&s=d66c587002d3d38f4e5bebeccd9cf082b3c95b6a)
![Screenshot of About This Mac](https://preview.redd.it/e8l21xgyd5pc1.png?width=276&format=png&auto=webp&s=e036eca6688a642311997fce3b3a08e0d53a0293)
![Screenshot of Ports and specifications](https://raw.githubusercontent.com/Collin8000/Thinkpad-T14-Gen-1-Amd-Hackintosh/a29001e16fc0566d92a3051f6cc94fe733e1774a/screenshotofports.png)


</details>


## 🔑 Important Information

Please note that individual results may vary. The configurations and performance can differ based on your hardware and software environments. Specifically, I have replaced my trackpad with a glass replacement, which may not be the case for your setup. This could lead to differences in trackpad issues and performance. Use this guide as a starting point and tailor the solutions to fit your specific needs.

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
- **[Baio1977](https://github.com/Baio1977)** and **[Askwakhid](https://github.com/askwakhid)**: For both of their Hackintosh EFI posts about the intel version of the T14. Another thanks to Baio1977 for the bios section of this post