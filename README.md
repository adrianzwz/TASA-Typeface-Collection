# TASA Typeface Collection

<!-- [![][Fontbakery]](https://adrianzwz.github.io/TASA-Typeface-Collection.git/fontbakery/fontbakery-report.html)
[![][Universal]](https://adrianzwz.github.io/TASA-Typeface-Collection.git/fontbakery/fontbakery-report.html)
[![][GF Profile]](https://adrianzwz.github.io/TASA-Typeface-Collection.git/fontbakery/fontbakery-report.html)
[![][Shaping]](https://adrianzwz.github.io/TASA-Typeface-Collection.git/fontbakery/fontbakery-report.html)

[Fontbakery]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fadrianzwz%2FTASA-Typeface-Collection.git%2Fgh-pages%2Fbadges%2Foverall.json
[GF Profile]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fadrianzwz%2FTASA-Typeface-Collection.git%2Fgh-pages%2Fbadges%2FGoogleFonts.json
[Outline Correctness]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fadrianzwz%2FTASA-Typeface-Collection.git%2Fgh-pages%2Fbadges%2FOutlineCorrectnessChecks.json
[Shaping]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fadrianzwz%2FTASA-Typeface-Collection.git%2Fgh-pages%2Fbadges%2FShapingChecks.json
[Universal]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fadrianzwz%2FTASA-Typeface-Collection.git%2Fgh-pages%2Fbadges%2FUniversal.json -->

The TASA Typeface Collection consists of TASA Explorer and TASA Orbiter, two bespoke typefaces designed for the rebrand of Taiwan Space Agency.

<!-- ![Sample Image](documentation/image1.png)
![Sample Image](documentation/image2.png) -->

## About the authors

### Local Remote
The fonts are designed with the support of Local Remote. Local Remote is an independent design studio based in Taiwan, aiming to create the future of brand experience through innovative, immersive, experiential, and multi-sensory storytelling across virtual & physical experience. <https://localremote.co/>

## Building

Fonts are built automatically by GitHub Actions - take a look in the "Actions" tab for the latest build.

If you want to build fonts manually on your own computer:

* `make build` will produce font files.
* `make test` will run [FontBakery](https://github.com/googlefonts/fontbakery)'s quality assurance tests.
* `make proof` will generate HTML proof files.

The proof files and QA tests are also available automatically via GitHub Actions - look at https://adrianzwz.github.io/TASA-Typeface-Collection.git.

## Changelog

**15 Feb 2023. Version 1.0**
- Initial release.

**12 May 2023. Version 1.001**
- Removed overlaps on glyphs U+2194, U+2195.

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at https://openfontlicense.org

## Repository Layout

This font repository structure is inspired by [Unified Font Repository v0.3](https://github.com/unified-font-repository/Unified-Font-Repository), modified for the Google Fonts workflow.