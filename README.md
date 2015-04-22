### Introduction

OmniLite is based on MultiBit, a Simplified Payment Verification (SPV) omnicoin desktop client.

OmniLite relies on the following technologies:

* Maven as the build system, so the usual Maven processes apply. If you're not familiar
with Maven then [download it first](http://maven.apache.org) and follow their installation instructions.
* [ZXing ("Zebra Crossing")](https://code.google.com/p/zxing/) for QR codes
* [omnicoinj](https://github.com/MeshCollider/omnicoinj/) for access to the omnicoin network
* IzPack for creating installers for Windows, Mac, Linux
* [Bitcoinj Enforcer Rules](https://github.com/gary-rowe/BitcoinjEnforcerRules) to prevent dependency chain attacks
* [XChange](https://github.com/timmolter/XChange) for access to several Bitcoin exchanges

### The omnicoinj "Alice" dependency

MultiBit depends on a special fork of omnicoinj for its omnicoin support. This is due to legacy wallet serialization issues
and the MultiBit team are working towards a complete integration through the MultiBit HD project.

While it is possible to build MultiBit using our staging repository you may want to review the modified omnicoinj library
for yourself. You can clone from this fork:
```
https://github.com/MeshCollider/omnicoinj-mb.git
```

The required version for use with the MultiBit master code is `omnicoinj-0.11.2-mb-alice`

Once cloned, you should then install the custom omnicoinj library using

```
mvn clean install
```

### Maven build targets

The important targets are:

```
mvn clean package
```

which will package the MultiBit project into `omnilite-x.y.z.jar` where `x.y.z` is the current version
number. This is suitable for local development work.

If you want to generate a complete set of multi-platform installers (Windows, Mac and Linux) you 
use the following command

```
maven clean install
```

After some processing, you will have the following artifacts in the target directory:

* an executable jar = omnilite-exe.jar
* a Mac application bundle = OmniLite.app
* a Mac DMG file = omnilite-x.y.z.dmg
* an installer for Windows = omnilite-x.y.z-windows-setup.exe
* an installer for Linux = omnilite-x.y.z-linux.jar

To run OmniLite from these artifacts you can follow the instructions [provided on the main MultiBit
website](https://multibit.org/help.html)

### OmniLite contains cut down JREs so is a large clone

The OmniLite installers contain cut down JREs so the project clone is quite large.
(100 to 200 MB).

### Custom configuration

OmniLite is quite flexible and has several features only accessible to power users through the configuration file. This
is discussed in more detail in [configuration.md](configuration.md)

### Contributing

MultiBit is a very active project and if you would like to contribute please feel free to get in touch using [jim@multibit.org](mailto:jim@multibit.org).
We are particularly looking for developers with the following skills to contribute:

* Experienced Java programmers
* Web designers [for the website](https://github.com/jim618/multibit-website)
* Translators using the [Crowdin site](http://translate.multibit.org/)
* Beta testers for checking the latest pre-release

All contributors must be OK with releasing their work under the MIT license.

Changes made to the original MultiBit code will then be merged into the OmniLite code.
