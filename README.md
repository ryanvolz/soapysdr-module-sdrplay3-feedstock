About soapysdr-module-sdrplay3-feedstock
========================================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/soapysdr-module-sdrplay3-feedstock/blob/main/LICENSE.txt)

Home: https://github.com/pothosware/SoapySDRPlay3/wiki

Package license: MIT

Summary: Soapy SDR plugin for SDRplay APIv3

Development: https://github.com/pothosware/SoapySDRPlay3

Documentation: https://github.com/pothosware/SoapySDRPlay3/wiki

The Soapy SDRplay project provides a plugin module to use SDRplay radio
devices within the SoapySDR API and software that supports SoapySDR.


Current build status
====================


<table>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-soapysdr--module--sdrplay3-green.svg)](https://anaconda.org/ryanvolz/soapysdr-module-sdrplay3) | [![Conda Downloads](https://img.shields.io/conda/dn/ryanvolz/soapysdr-module-sdrplay3.svg)](https://anaconda.org/ryanvolz/soapysdr-module-sdrplay3) | [![Conda Version](https://img.shields.io/conda/vn/ryanvolz/soapysdr-module-sdrplay3.svg)](https://anaconda.org/ryanvolz/soapysdr-module-sdrplay3) | [![Conda Platforms](https://img.shields.io/conda/pn/ryanvolz/soapysdr-module-sdrplay3.svg)](https://anaconda.org/ryanvolz/soapysdr-module-sdrplay3) |

Installing soapysdr-module-sdrplay3
===================================

Installing `soapysdr-module-sdrplay3` from the `ryanvolz` channel can be achieved by adding `ryanvolz` to your channels with:

```
conda config --add channels ryanvolz
conda config --set channel_priority strict
```

Once the `ryanvolz` channel has been enabled, `soapysdr-module-sdrplay3` can be installed with `conda`:

```
conda install soapysdr-module-sdrplay3
```

or with `mamba`:

```
mamba install soapysdr-module-sdrplay3
```

It is possible to list all of the versions of `soapysdr-module-sdrplay3` available on your platform with `conda`:

```
conda search soapysdr-module-sdrplay3 --channel ryanvolz
```

or with `mamba`:

```
mamba search soapysdr-module-sdrplay3 --channel ryanvolz
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search soapysdr-module-sdrplay3 --channel ryanvolz

# List packages depending on `soapysdr-module-sdrplay3`:
mamba repoquery whoneeds soapysdr-module-sdrplay3 --channel ryanvolz

# List dependencies of `soapysdr-module-sdrplay3`:
mamba repoquery depends soapysdr-module-sdrplay3 --channel ryanvolz
```




Updating soapysdr-module-sdrplay3-feedstock
===========================================

If you would like to improve the soapysdr-module-sdrplay3 recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`ryanvolz` channel, whereupon the built conda packages will be available for
everybody to install and use from the `ryanvolz` channel.
Note that all branches in the conda-forge/soapysdr-module-sdrplay3-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ryanvolz](https://github.com/ryanvolz/)

