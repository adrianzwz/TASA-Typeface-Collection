# TASA Typeface Collection

[![][E-Fontbakery]](https://localremotetw.github.io/TASA-Typeface-Collection/fontbakery/TASAExplorer-fontbakery-report.html)
[![][O-Fontbakery]](https://localremotetw.github.io/TASA-Typeface-Collection/fontbakery/TASAExplorer-fontbakery-report.html)

[E-Fontbakery]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Flocalremotetw%2FTASA-Typeface-Collection%2Fgh-pages%2Fbadges%2FTASAExplorer%2Foverall.json&label=FontBakery%20QA%20(Explorer)
[O-Fontbakery]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Flocalremotetw%2FTASA-Typeface-Collection%2Fgh-pages%2Fbadges%2FTASAExplorer%2Foverall.json&label=FontBakery%20QA%20(Orbiter)

The TASA Typeface Collection is a suite of two typefaces, TASA Explorer and TASA Orbiter, two typefaces originally commissioned by the [Taiwan Space Agency (TASA)](https://www.tasa.org.tw/en-US) as part of its institutional rebrand, and released under the SIL Open Font License.

TASA Explorer is a geometric sans-serif designed to echo the adventurous spirit of space exploration. Its vertically cut terminals and sharp-angled corners lend a bold, assertive character that commands attention. Subtle contrast between thick and thin strokes adds visual fluidity, preventing the geometric structure from feeling rigid.

TASA Orbiter takes a more pragmatic approach, reflecting the technical precision of space operations. The neo-grotesque design is built from a systematic vocabulary of recurring shapes, featuring slightly squarish counters and right-angled turns.

Both typefaces are available in 5 weights (Regular, Medium, SemiBold, Bold, ExtraBold) and can be used as either static font files or variable fonts with a weight axis.

![Sample Image](documentation/001.gif)

### version 1 (2023) –– Original Release
The original TASA typefaces were designed between 2022–2023 as part of the comprehensive [rebrand project](https://www.localremote.co/projects/taiwan-space-agency) for the Taiwan Space Agency.

**TASA Explorer** (v1) featured five weights and was designed exclusively for display use. With an extremely large x-height and minimal optical corrections, it was optimized for high-impact performance at large sizes.

**TASA Orbiter** (v1) was released in 13 styles across three optical sizes: Text and Deck each had four weights, while Display included five weights.

Files of version 1 can still be found in the [releases](https://github.com/localremotetw/TASA-Typeface-Collection/releases/tag/v1.001) section, but are no longer maintained.

### version 2 (2025) –– Redesign
In 2025, both typefaces were updated with a focus on preserving their core design characteristics while enhancing drawing precision and readability.

**TASA Explorer** introduces a slightly reduced x-height, smoother letterforms, and more relaxed spacing, resulting in a more even texture across text blocks. It is now suitable for both display and text applications.

**TASA Orbiter** consolidated its optical size variants, reducing the total styles from 13 to five weights—streamlining the family in line with TASA Explorer. The new design is based on the former “Deck” optical size, with refined forms and spacing optimized for flexible use.

The fonts now support the Google Fonts Core Latin character set, along with additional glyphs for Taiwanese Romanizations ([Tâi-lô](https://en.wikipedia.org/wiki/T%C3%A2i-u%C3%A2n_L%C3%B4-m%C3%A1-j%C4%AB_Phing-im_Hong-%C3%A0n) & [POJ](https://en.wikipedia.org/wiki/Pe%CC%8Dh-%C5%8De-j%C4%AB)).

![Sample Image](documentation/002.png)
![Sample Image](documentation/003.png)

## Contributions and Issues
To contribute, feel free to fork this project. For errors and suggestions, please create an [Issue](https://github.com/localremotetw/TASA-Typeface-Collection/issues).

## Building

Fonts are built automatically by GitHub Actions - take a look in the "Actions" tab for the latest build.

If you want to build fonts manually on your own computer:

* `make build` will produce font files.
* `make test` will run [FontBakery](https://github.com/googlefonts/fontbakery)'s quality assurance tests.
* `make proof` will generate HTML proof files.

The proof files and QA tests are also available automatically via GitHub Actions - look at <https://localremotetw.github.io/TASA-Typeface-Collection/>.

## Changelog

**15 Feb 2023. Version 1.0**
- Initial release.

**12 May 2023. Version 1.001**
- Removed overlaps on glyphs U+2194, U+2195.

**16 Jul 2025. Version 2.000**
- Complete redesign of both typefaces.

**23 Jul 2025. Version 2.010**
- Overall kerning improvements.
- Resolved uneven symmetric kerning and overkerned pairs.
- Consistent kerning in small figures.

**24 Jul 2025. Version 2.011**
- Decomposed the components of black circled figures.

## Acknowledgements

Thanks to Kiàn-tiong and GoRong for generously sharing their expertise on implementing and designing glyphs for Taiwanese Romanizations.

Thanks to TienMin and Troy for providing guidance and suggestions on the original design.

Thanks to the team at Local Remote and everyone involved in the original TASA rebrand project.

Thanks to the scientists and staff at TASA. Though you may not be familiar with typography, but your respect of different expertise and open-minded approach has been a large supporting force in the process. Seeing the fonts being implemented not only on the website, but also in Instagram posts and other applications is a surreal feeling.

Thanks to all who provided feedback and encouragements throughout the design process and following the public release.

## About the authors

**Local Remote** is a design studio based in Taiwan, working with brands at the forefront of change, through means of experimental, experiential, and multi-sensory storytelling across virtual & physical presence.  
[contact@localremote.co](mailto:contact@localremote.co) / <https://localremote.co/>

**Weizhong Zhang** is a freelance type and graphic designer based in Taipei, Taiwan. His practice centers on bilingual typography, exploring the relationship between Latin and Hanzi scripts. He works with studios and clients to create custom typefaces, logotypes, and lettering projects.  
[adrianzwz@outlook.com](mailto:adrianzwz@outlook.com) / <https://azwz.work/>

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.  
This license is available with a FAQ at https://openfontlicense.org

## Repository Layout

This font repository structure is inspired by [Unified Font Repository v0.3](https://github.com/unified-font-repository/Unified-Font-Repository), modified for the Google Fonts workflow.

## Links
- [Taiwan Space Agency](https://www.tasa.org.tw/en-US)
- [Rebrand Project (Local Remote)](https://www.localremote.co/projects/taiwan-space-agency)
- [Rebrand Project (Rytass)](https://rytass.com/projects/TASA)
- [ButTaiwanKit | But的台灣字型工具](https://github.com/ButTaiwan/GlyphsTools/tree/main/ButTaiwanKit)
- [Formosan Languages Diacritics in Glyphs | 讓字型支援台客族語！本土語言調號的設定指南 - justfont blog](https://blog.justfont.com/2024/12/formosan_languages_diacritics_in_glyphs/)
- [Tâi-uân Lô-má-jī Phing-im Hong-àn - Wikipedia](https://en.wikipedia.org/wiki/T%C3%A2i-u%C3%A2n_L%C3%B4-m%C3%A1-j%C4%AB_Phing-im_Hong-%C3%A0n)
- [Pe̍h-ōe-jī - Wikipedia](https://en.wikipedia.org/wiki/Pe%CC%8Dh-%C5%8De-j%C4%AB)
